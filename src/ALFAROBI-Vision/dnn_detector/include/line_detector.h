#ifndef LINE_DETECTOR_H
#define LINE_DETECTOR_H

#include <opencv2/imgproc.hpp>

#define INF 1000000007

class LineDetector
{
public:
  LineDetector();

  void findLinesPoints(cv::Mat &in_image_, std::vector<cv::Point> &node);

  cv::Mat getOutputImage(){ return out_image_;}

protected:
  void calcCij(cv::Mat &image, std::vector<std::vector<int> > &cij);
  void createImageNodes(cv::Mat image, std::vector<std::vector<int> > &cij);
  void createImageEdges(cv::Mat image, std::vector<std::vector<int> > &cij);
  void convertNodestoPoint(std::vector<std::vector<int> > &cij);

  const int resolution_of_whitecount;
  int amount_of_white_neighbours;
  int resolution_of_digestion;
  int radius_of_major_nodes;
  int nearest_neighbour_scope;
  int calc_cij_switch;
  int node_draw_switch;
  int line_traversal_scope;
  int Tolerance;

  cv::Mat out_image_;
  std::vector<cv::Point> nodes_;

};

#endif // LINE_DETECTOR_H
