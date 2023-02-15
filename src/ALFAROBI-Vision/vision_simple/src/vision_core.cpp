#include <vision_simple/vision_core.h>
#include <sensor_msgs/Imu.h>

using namespace std;
using namespace cv;

VisionCore::VisionCore()
  : nh_(ros::this_node::getName()),
    it_(this->nh_),
    FOV_WIDTH(70.42/2 * M_PI / 180),
    FOV_HEIGHT(43.30/2 * M_PI / 180)
{
  white_points_pub_ = nh_.advertise<vision_simple::Points>("white_points", 100);
  image_sub_ = it_.subscribe("image_in", 1, &VisionCore::imageCallback, this);
  image_pub_ = it_.advertise("image_out", 100);
}

void VisionCore::imageCallback(const sensor_msgs::ImageConstPtr& msg)
{

  this->cv_img_ptr_sub_ = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::RGB8);

  this->new_image_flag_ = true;

  received_time_ = msg->header.stamp;
}

void VisionCore::CameraPoseCallback(const geometry_msgs::PoseStampedConstPtr &msg)
{
    geometry_msgs::Pose cam_pose_;
    cam_pose_.position = msg->pose.position;
    cam_pose_.orientation = msg->pose.orientation;

    tf::poseMsgToEigen(cam_pose_, camera);

}

bool VisionCore::newImage()
{
  if (new_image_flag_)
  {
    new_image_flag_ = false;
    return true;
  }
  else
  {
    return false;
  }
}

void VisionCore::setInputImage(cv::Mat &inIm)
{
  cvtColor(inIm, inIm, CV_RGB2BGR);
  InputImage = inIm.clone();

  //  if (params_config_.debug == false)
  OutImage = inIm.clone();
}

void VisionCore::publish()
{
  publishPoints();
  //  publishImage();
}

void VisionCore::getOutputImage(Mat &outIm)
{
  cvtColor(OutImage, OutImage, CV_BGR2RGB);
  outIm = OutImage.clone();
}

void VisionCore::publishImage()
{
  if(!OutImage.empty())
  {
    //    getOutputImage(cv_img_pub_->image);
    //    cv_img_pub_->encoding = sensor_msgs::image_encodings::RGB8;
    //    image_pub_.publish(cv_img_pub_->toImageMsg());
  }
}

void VisionCore::publishPoints()
{
  vision_simple::Points white_points;

  robotis_framework::Pose3D camera_state = robotis_framework::getPose3DfromTransform(camera);

  //   data
  //   top(-1), bottom(+1)
  //   left(-1), right(+1)

  for(int idx = 0; idx < linePoints.size();idx++)
  {
    geometry_msgs::Point point_;
    double angle_x = -((linePoints[idx].x / double(OutImage.cols)) * 2 - 1) * tan(FOV_WIDTH);
    double angle_y = ((linePoints[idx].y / double(OutImage.rows)) * 2 - 1) * tan(FOV_HEIGHT);
    double distance_x = (camera_state.z / tan(camera_state.pitch + atan(angle_y)));
    double distance_y = tan(camera_state.yaw + atan(angle_x)) * distance_x;
    point_.x = distance_x; point_.y = distance_y; point_.z = 0;
    white_points.WhitePoints.push_back(point_);
  }

  for(int idx = 0; idx < fieldBoundary.size();idx++)
  {
    geometry_msgs::Point point_;
    double angle_x = -((fieldBoundary[idx].x / double(OutImage.cols)) * 2 - 1) * tan(FOV_WIDTH);
    double angle_y = ((fieldBoundary[idx].y / double(OutImage.rows)) * 2 - 1) * tan(FOV_HEIGHT);
    double distance_x = (camera_state.z / tan(camera_state.pitch + atan(angle_y)));
    double distance_y = tan(camera_state.yaw + atan(angle_x)) * distance_x;
    point_.x = distance_x; point_.y = distance_y; point_.z = 0;
    white_points.WhitePoints.push_back(point_);
  }

  white_points_pub_.publish(white_points);
}

void VisionCore::drawObjects()
{
  for(int i = 0; i < linePoints.size(); i++)
    circle(OutImage, linePoints[i], 3, Scalar(100,100,255));

  for(int i = 0; i < fieldBoundary.size(); i++)
  {
    circle(OutImage, fieldBoundary[i], 3, Scalar(100,255,100));
  }

  /// Draw the circles detected
//  for( size_t i = 0; i < circles.size(); i++ )
//  {
//      Point center(cvRound(circles[i][0]), cvRound(circles[i][1]));
//      int radius = cvRound(circles[i][2]);
//      // circle center
//      circle( OutImage, center, 3, Scalar(0,255,0), -1, 8, 0 );
//      // circle outline
//      circle( OutImage, center, radius, Scalar(0,0,255), 3, 8, 0 );
//   }


  cv::imshow("OPENCV_WINDOW", OutImage);
  cv::waitKey(1);
}


void VisionCore::process()
{
  if (cv_img_ptr_sub_ != NULL)
  {
    setInputImage(cv_img_ptr_sub_->image);

    InputImage.copyTo(RawBGRImg);
    cvtColor(RawBGRImg, RawHSVImg, CV_BGR2HSV);

    /*
   * White from LUT
   */

    //  Mat whiteLUT = Mat::zeros(RawHSVImg.size(), CV_8UC1);
    //    updateLUT(RawHSVImg, whiteLUT);


    /*
   * Find Contour, get field mask
   */

    Mat fieldBinary = Mat::zeros(RawHSVImg.size(), CV_8UC1);
    Mat fieldConvectHull = Mat::zeros(RawHSVImg.size(), CV_8UC1);

    fieldDetection_.getGreenField(RawBGRImg, fieldBinary);
    threshold(fieldBinary, fieldBinary, 95, 255, CV_THRESH_BINARY);


    vector<vector<Point > > contours;
    findContours(fieldBinary,contours,CV_RETR_EXTERNAL,CV_CHAIN_APPROX_NONE);
    if(contours.size() > 0)
    {
      vector<Point> ConvexHullPoints =  fieldDetection_.contoursConvexHull(contours);
      if(ConvexHullPoints.size() > 0)
      {
        vector<vector<Point> > hullPoints = vector<vector<Point> > (1, ConvexHullPoints);

        //    polylines( RawBGRImg, ConvexHullPoints, true, Scalar(255,0,0), 2 );
        //    fillPoly(drawing, ConvexHullPoints, Scalar(255,255,255), 2);
        drawContours(fieldConvectHull, hullPoints, -1, Scalar(255), CV_FILLED);
      }
    }

    /*
   * Field Edge Point
   */

    Mat cleanField;
    cv::bitwise_and(fieldBinary, fieldConvectHull, cleanField);
    fieldBoundary = fieldDetection_.locateBorderPoints(cleanField);

    /*
   * Field Line Poitns
   */

    Mat inv_field = Mat::zeros(cleanField.size(), CV_8UC1);
    bitwise_not(cleanField, inv_field);
    multiply(inv_field,fieldConvectHull,inv_field);
    vector<vector<Point> > row_candidate, col_candidate;

    linePoints = lineDetection_.scanLine(inv_field, row_candidate, col_candidate);

    /// Apply the Hough Transform to find the circles
//    GaussianBlur( inv_field, inv_field, Size(5, 5), 2, 2 );
//    HoughCircles(inv_field, circles, CV_HOUGH_GRADIENT, 1, inv_field.rows/16, 100, 30, 0, 0 );

    drawObjects();

  }
}
