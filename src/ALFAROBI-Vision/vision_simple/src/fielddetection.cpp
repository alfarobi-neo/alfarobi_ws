#include <vision_simple/fielddetection.h>

using namespace std;
using namespace cv;

FieldDetection::FieldDetection()
{

}

void FieldDetection::getGreenField(Mat& input, Mat& output)
{
  Mat channels[3];
  split(input, channels);

  Mat g = Mat::zeros(input.size(), CV_32FC1);

  for(int row = 0; row < input.rows; row++)
    for(int col = 0;col < input.cols; col++)
      g.at<float>(row,col) = (float)channels[1].at<uchar>(row,col) / ((float)channels[0].at<uchar>(row,col) + (float)channels[1].at<uchar>(row,col) + (float)channels[2].at<uchar>(row,col));

  g.convertTo(output, CV_8UC1, 255, 0);

  Mat element = getStructuringElement( MORPH_ELLIPSE, Size(3, 3));
  dilate( output, output, element);
}

vector<Point> FieldDetection::contoursConvexHull( vector<vector<Point> > contours )
{
  vector<Point> result;
  vector<Point> pts;
  for ( size_t i = 0; i< contours.size(); i++)
    for ( size_t j = 0; j< contours[i].size(); j++)
    {
      double area = contourArea(contours[i]);

      if(area > 1000)
        pts.push_back(contours[i][j]);
    }
  if(pts.size() > 0)
    convexHull( pts, result );
  return result;
}

vector<Point> FieldDetection::locateBorderPoints(Mat &fieldBinary)
{
  vector<Point> fieldPoints;
  int STEP = 20;
  int maxCounter = 100;

  for(int col = 0; col < fieldBinary.cols; col+=STEP)
  {
    int blackCounter = 0;
    Point candidate;
    for(int row = fieldBinary.rows; row > 0; row--)
    {
      int pixel = fieldBinary.at<uchar>(row, col);
      if (pixel  == 255)
      {
        blackCounter = 0;
        candidate = Point(col, row);

      }
      if(pixel == 0)
      {
        blackCounter++;
      }

      if(blackCounter >  maxCounter)
      {
        fieldPoints.push_back(candidate);
        break;
      }
    }
  }

  return fieldPoints;
}
