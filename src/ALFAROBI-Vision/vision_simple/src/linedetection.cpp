#include <vision_simple/linedetection.h>

using namespace std;
using namespace cv;


LineDetection::LineDetection()
{

}

vector<Point> LineDetection::scanLine(Mat &input, vector<vector<Point> > &row_candidate, vector<vector<Point> > &col_candidate)
{
  vector<Point> linePoint;
  int STEP = 60;

  for(int row = 0; row < input.rows; row++)
  {
    vector<Point> rowPoint;
    for(int col = 0; col < input.cols; col++)
    {
      int pixel = input.at<uchar>(row,col);

      if(pixel > 0)
      {
        rowPoint.push_back(Point(col, row));
      }
    }
    row_candidate.push_back(rowPoint);
  }

  for(int s_col = 0; s_col < input.cols; s_col+=STEP)
  {
    vector<Point> colPoint;
    bool start = false;
    int start_col = 0;

    for(int s_row = 0; s_row < input.rows; s_row++)
    {
      int pixel = input.at<uchar>(s_row, s_col);
      if((pixel == 255 ) && (start == false))
      {
        start_col = s_row;
        start = true;
      }

      if(pixel == 0 && start == true)
      {
        int end_col = s_row;
        int middle = (start_col + end_col)/2;
        colPoint.push_back(Point(s_col, middle));
        start = false;
      }
    }
    col_candidate.push_back(colPoint);
  }

    for(int i = 0; i < row_candidate.size(); i++)
      for(int j = 0; j < col_candidate.size(); j++)
      {
        vector<Point> col = col_candidate[j];

        for(int x = 0; x < col.size(); x++)
          if(std::find(row_candidate[i].begin(), row_candidate[i].end(), col[x]) != row_candidate[i].end())
          {
            linePoint.push_back(col[x]);
          }

      }

    return linePoint;
}

