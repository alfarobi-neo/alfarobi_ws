#ifndef FIELDDETECTION_H
#define FIELDDETECTION_H

#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>

class FieldDetection
{
public:
  FieldDetection();
  void getGreenField(cv::Mat& input, cv::Mat& output);
  std::vector<cv::Point> contoursConvexHull( std::vector<std::vector<cv::Point> > contours );
  std::vector<cv::Point> locateBorderPoints(cv::Mat &fieldBinary);





private:

};

#endif // FIELDDETECTION_H
