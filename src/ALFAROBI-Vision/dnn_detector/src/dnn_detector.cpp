#include <dnn_detector.h>
#include <fstream>
#include <iostream>
#include <cstdlib>

using namespace cv;
using namespace std;

namespace robotis_op{

    const char* classNames[] = {"background",
                            "Ball", "bicycle", "bird", "boat",
                            "bottle", "bus", "car", "cat", "chair",
                            "cow", "diningtable", "dog", "horse",
                            "motorbike", "person", "pottedplant",
                            "sheep", "sofa", "train", "tvmonitor"};

                            size_t objectClass; 

BallDNN::BallDNN()
    : nh_(ros::this_node::getName()),
      config_(),
      init_param_(false)
{
    has_path_ = nh_.getParam("yaml_path", param_path_);

    std::string proto_path = ros::package::getPath(ROS_PACKAGE_NAME) + "/config/SoccerBall-Alfarobi_deploy.prototxt";
    std::string model_path = ros::package::getPath(ROS_PACKAGE_NAME) + "/config/SoccerBall-Alfarobi_deploy.caffemodel";
    nh_.param<std::string>("model", v_model_path, model_path);
    nh_.param<std::string>("proto", v_proto_path, proto_path);

    DNNConfig detect_;

    nh_.param<int>("scaling", detect_.inHeight, config_.inHeight);
    nh_.param<int>("scaling", detect_.inWidth, config_.inWidth);
    nh_.param<double>("mean_val", detect_.meanVal, config_.meanVal);
    nh_.param<bool>("filter_debug", detect_.debug, config_.debug);
    nh_.param<double>("threshold", detect_.confidence_thrs, config_.confidence_thrs);

    //sets subscribers
    enable_sub_ = nh_.subscribe("enable", 1, &BallDNN::enableCallback, this);
    camera_info_sub_ = nh_.subscribe("cameraInfo_in", 100, &BallDNN::cameraInfoCallback, this);

    // web setting
    param_pub_ = nh_.advertise<dnn_detector::DnnDetectorParams>("current_params", 1);
    param_command_sub_ = nh_.subscribe("param_command", 1, &BallDNN::paramCommandCallback, this);

    callback_fnc_ = boost::bind(&BallDNN::dynParamCallback, this, _1, _2);
    param_server_.setCallback(callback_fnc_);

    default_setting_path_ = ros::package::getPath(ROS_PACKAGE_NAME) + "/config/dnn.yaml";


    loadDNNdata(model_path, proto_path);

}

BallDNN::~BallDNN()
{
}

void BallDNN::process()
{

    Mat fieldBinary = Mat::zeros(RawHSVImg.size(), CV_8UC1);
    Mat fieldConvectHull = Mat::zeros(RawHSVImg.size(), CV_8UC1);

//    getGreenField(in_image_, fieldBinary);

//    threshold(fieldBinary, fieldBinary, config_.fieldThreshold, 255, CV_THRESH_BINARY);

    /*
     * Find Contour, get field mask
     */

    //    vector<vector<Point > > contours;
    //    findContours(fieldBinary,contours,CV_RETR_EXTERNAL,CV_CHAIN_APPROX_NONE);
    //    vector<Point> ConvexHullPoints =  contoursConvexHull(contours);
    //    vector<vector<Point> > hullPoints = vector<vector<Point> > (1, ConvexHullPoints);

    //    //    polylines( RawBGRImg, ConvexHullPoints, true, Scalar(255,0,0), 2 );
    //    //    fillPoly(drawing, ConvexHullPoints, Scalar(255,255,255), 2);
    //    drawContours(fieldConvectHull, hullPoints, -1, Scalar(255), CV_FILLED);

    /*
     * Field Line Extractions
     */


    /*
     * Ball Detection Using DNN
     */

    cv::Mat inputBlob = cv::dnn::blobFromImage(in_image_, 0.007843, cv::Size(180, 180), cv::Scalar(127.5, 127.5, 127.5), true, false);

    net.setInput(inputBlob);

    cv::Mat detection = net.forward();

    cv::Mat detectionMat(detection.size[2], detection.size[3], CV_32F, detection.ptr<float>());

    for(int i = 0; i < detectionMat.rows; i++)
    {
    objectClass = (size_t)(detectionMat.at<float>(i, 1));
        float confidence = detectionMat.at<float>(i, 2);

        if(confidence > config_.confidence_thrs)
        {
            int left = static_cast<int>(detectionMat.at<float>(i, 3) * in_image_.cols);
            int top = static_cast<int>(detectionMat.at<float>(i, 4) * in_image_.rows);
            int right = static_cast<int>(detectionMat.at<float>(i, 5) * in_image_.cols);
            int bottom = static_cast<int>(detectionMat.at<float>(i, 6) * in_image_.rows);

            int center_x = (right - left)/2;
            int center_y = abs((top - bottom))/2;
            double radius = center_y;

            circles_.push_back(cv::Vec3f(left + center_x, top + center_y, radius));
        }
        else
            circles_.push_back(cv::Vec3f(-1, -1, 0));
    }

}

void BallDNN::getGreenField(Mat& input, Mat& output)
{
    Mat channels[3];
    split(input, channels);

    Mat g = Mat::zeros(input.size(), CV_32FC1);

    for(int row = 0; row < input.rows; row++)
        for(int col = 0;col < input.cols; col++)
            g.at<float>(row,col) = (float)channels[1].at<uchar>(row,col) / ((float)channels[0].at<uchar>(row,col) + (float)channels[1].at<uchar>(row,col) + (float)channels[2].at<uchar>(row,col));

    g.convertTo(output, CV_8UC1, 255, 0);
}

vector<Point> BallDNN::contoursConvexHull( vector<vector<Point> > contours )
{
    vector<Point> result;
    vector<Point> pts;
    for ( size_t i = 0; i< contours.size(); i++)
        for ( size_t j = 0; j< contours[i].size(); j++)
        {
            double area = contourArea(contours[i]);

            if(area > 500)
                pts.push_back(contours[i][j]);
        }
    convexHull( pts, result );
    return result;
}

void BallDNN::enableCallback(const std_msgs::Bool::ConstPtr &msg)
{
    enable_ = msg->data;
}

void BallDNN::dynParamCallback(dnn_detector::DnnParamsConfig &config, uint32_t level)
{
    config_.inWidth = config.scaling;
    config_.inHeight = config.scaling;
    config_.confidence_thrs = config.confindence;
    config_.meanVal = config.mean_val;
    config_.debug = config.debug_image;

    saveConfig();
}

void BallDNN::cameraInfoCallback(const sensor_msgs::CameraInfo & msg)
{
    if (enable_ == false)
        return;

    camera_info_msg_ = msg;
}

void BallDNN::paramCommandCallback(const std_msgs::String::ConstPtr &msg)
{
    if(msg->data == "debug")
    {
        config_.debug = true;
        saveConfig();
    }
    else if(msg->data == "normal")
    {
        config_.debug = false;
        saveConfig();
    }
    else if(msg->data == "reset")
    {
        // load default parameters and apply
        resetParameter();
    }
}

bool BallDNN::setParamCallback(dnn_detector::SetParameters::Request &req, dnn_detector::SetParameters::Response &res)
{
    config_.inWidth = req.params.scaling;
    config_.inHeight = req.params.scaling;
    config_.confidence_thrs = req.params.confidence;
    config_.meanVal = req.params.mean_val;

    saveConfig();

    res.returns = req.params;

    return true;
}

bool BallDNN:: getParamCallback(dnn_detector::GetParameters::Request &req, dnn_detector::GetParameters::Response &res)
{
    res.returns.scaling = config_.inWidth;
    res.returns.confidence = config_.confidence_thrs;
    res.returns.mean_val = config_.meanVal;

    return true;
}

void BallDNN::resetParameter()
{

    YAML::Node doc;

    try
    {
        // load yaml
        doc = YAML::LoadFile(default_setting_path_.c_str());

        // parse
        config_.inHeight = doc["scaling"].as<int>();
        config_.inWidth = doc["scaling"].as<int>();
        config_.confidence_thrs = doc["confidence"].as<double>();
        config_.meanVal = doc["mean_val"].as<double>();
        config_.debug = doc["filter_debug"].as<bool>();

        saveConfig();

        publishParam();
    } catch (const std::exception& e)
    {
        ROS_ERROR_STREAM("Failed to Get default parameters : " << default_setting_path_);
        return;
    }
}

void BallDNN::publishParam()
{
    dnn_detector::DnnDetectorParams params;

    params.confidence = config_.confidence_thrs;
    params.mean_val = config_.meanVal;
    params.scaling = config_.inWidth;
    param_pub_.publish(params);
}

void BallDNN::saveConfig()
{
    if (has_path_ == false)
        return;

    YAML::Emitter yaml_out;

    yaml_out << YAML::BeginMap;
    yaml_out << YAML::Key << "scaling" << YAML::Value << config_.inWidth;
    yaml_out << YAML::Key << "confidence" << YAML::Value << config_.confidence_thrs;
    yaml_out << YAML::Key << "mean_val" << YAML::Value << config_.meanVal;
    yaml_out << YAML::Key << "filter_debug" << YAML::Value << config_.debug;
    yaml_out << YAML::EndMap;

    // output to file
    std::ofstream fout(param_path_.c_str());
    fout << yaml_out.c_str();
}


void BallDNN::setInputImage(const cv::Mat &inIm)
{
    in_image_ = inIm.clone();
    cv::cvtColor(in_image_, RawHSVImg, CV_BGR2HSV);
    cv::cvtColor(in_image_, RawGrayImg, CV_BGR2GRAY);

    if (config_.debug == false)
        out_image_ = in_image_.clone();
}
void BallDNN::getOutputImage(cv::Mat & outIm)
{
    if(config_.debug == true)
        drawOutputImage();
    outIm = out_image_.clone();
}

void BallDNN::drawOutputImage()
{
    cv::Point center_position;
    int radius = 0;
    size_t ii;

    ostringstream ss;
            ss.str("");
            ss << confidence;
            String conf(ss.str());

    //draws results to output Image
    if (config_.debug == true)
        out_image_ = in_image_.clone();

    String label = String(classNames[objectClass]);
            int baseLine = 0;
            Size labelSize = getTextSize(label, FONT_HERSHEY_SIMPLEX, 0.5, 1, &baseLine);

            cout << label.c_str() << endl;

    for (ii = 0; ii < circles_.size(); ii++)
    {

        radius = cvRound(circles_[ii][2]);
        center_position = cv::Point(cvRound(circles_[ii][0]), cvRound(circles_[ii][1]));  
    }
                

    cv::circle(out_image_, center_position, 2, cv::Scalar(0, 0, 255), 1, 8, 0);      // circle center in blue
    cv::circle(out_image_, center_position, radius, cv::Scalar(0, 0, 255), 2, 8, 0);      // circle outline in blue
     putText(out_image_, label, center_position + Point(radius, radius),
                        FONT_HERSHEY_SIMPLEX, 0.5, Scalar(0,0,0)); 

}

void BallDNN::loadDNNdata(const std::string path_model, const std::string path_proto)
{
    CV_Assert(!path_proto.empty() && !path_proto.empty());

    net = cv::dnn::readNetFromCaffe(path_proto, path_model);
    net.setPreferableTarget(cv::dnn::DNN_TARGET_CPU);

    ROS_INFO("Model from %s \n", path_model.c_str());
    ROS_INFO("Proto from %s \n", path_proto.c_str());

    if (net.empty())
    {
        ROS_ERROR("NO DNN MODEL LOADED");
        exit(-1);
    }

}

}
