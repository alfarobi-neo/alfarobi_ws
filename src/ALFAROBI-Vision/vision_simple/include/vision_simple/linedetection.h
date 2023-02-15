#ifndef LINEDETECTION_H
#define LINEDETECTION_H

#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>
#include <algorithm>

class LineDetection
{
public:
  LineDetection();
  std::vector<cv::Point> scanLine(cv::Mat &input, std::vector<std::vector<cv::Point> > &row_candidate, std::vector<std::vector<cv::Point> > &col_candidate);


};

#endif // LINEDETECTION_H
