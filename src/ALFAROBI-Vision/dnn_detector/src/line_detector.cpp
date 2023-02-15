#include <line_detector.h>

using namespace cv;
using namespace std;


LineDetector::LineDetector()
    : resolution_of_whitecount(1),
      amount_of_white_neighbours(2),
      resolution_of_digestion(12),
      radius_of_major_nodes(5),
      nearest_neighbour_scope(15),
      calc_cij_switch(0),
      node_draw_switch(0),
      line_traversal_scope(2),
      Tolerance(5)
{

}

void LineDetector::findLinesPoints(Mat &in_image_, std::vector<cv::Point> &node)
{

    int IMAGE_WIDTH = in_image_.cols;
    int IMAGE_HEIGHT = in_image_.rows;

    vector<vector<int> > cij(vector<vector<int> >(IMAGE_WIDTH, vector<int>(IMAGE_HEIGHT, INF)));

    calcCij(in_image_,cij);
    createImageNodes(in_image_,cij);

    convertNodestoPoint(cij);

    node = nodes_;
}

void LineDetector::calcCij(Mat &image, vector<vector<int> > &cij)
{
    Size size=image.size();
    vector<vector<int> > whiteCount(vector<vector<int> >(size.width, vector<int>(size.height, INF)));
    vector<vector<int> > Digest(vector<vector<int> >(size.width, vector<int>(size.height, INF)));
    // vector<vector<int> > cij(vector<vector<int> >(size.width, vector<int>(size.height, INF)));
    //  vector<vector<int> > cij(vector<vector<int> >(size.width, vector<int>(size.height, INF)));


    for(int j= resolution_of_whitecount   ;j<size.height- resolution_of_whitecount   ;j++)
    {
        for(int i= resolution_of_whitecount   ;i<size.width- resolution_of_whitecount   ;i++)
        {
            whiteCount[i][j]=0;

            for(int xx=-1*resolution_of_whitecount;xx<resolution_of_whitecount+1;xx++)
            {
                for(int yy=-1*resolution_of_whitecount;yy<resolution_of_whitecount+1;yy++)
                {
                    if((j+yy > size.height) || (j+yy < 0)
                            || (i+xx > size.width) || i+xx < 0)
                        continue;
                    uchar intensity = image.at<uchar>(j+yy, i+xx);
                    //          uchar blue = intensity.val[0];
                    //          uchar green = intensity.val[1];
                    //          uchar red = intensity.val[2];
                    //          if(blue>0||green>0||red>0)
                    if(intensity > 0)
                    {
                        image.at<uchar>(j,i)=0;
                        whiteCount[i][j]++;
                    }
                }
            }

            Digest[i][j]=0;

            if(whiteCount[i][j]==amount_of_white_neighbours+1)
            {
                Digest[i][j]=1;
                cij[i][j]=1;

            }
            if(whiteCount[i][j]==amount_of_white_neighbours+2)
            {
                Digest[i][j]=3;
                cij[i][j]=1;

            }
            if(whiteCount[i][j]==amount_of_white_neighbours+3)
            {
                Digest[i][j]=9;
                cij[i][j]=1;

            }
            //
            //
        }
    }



    for(int j= resolution_of_digestion ;j<size.height- resolution_of_digestion ;j++)
    {
        for(int i= resolution_of_digestion ;i<size.width- resolution_of_digestion ;i++)
        {
            if(whiteCount[i][j] == 0||Digest[i][j]==0)
                continue;
            int max_digest=0,maxi=0,maxj=0;
            if(Digest[i][j]>0)
            { max_digest=Digest[i][j];
                maxj=j;
                maxi=i;
                int digested_count = 0;
                for(int xx=-1*resolution_of_digestion ; xx <resolution_of_digestion + 1 ; xx++)
                {
                    for(int yy=-1*resolution_of_digestion ; yy <resolution_of_digestion + 1 ; yy++)
                    {
                        if(Digest[i+xx][j+yy]>max_digest)
                        {
                            max_digest=Digest[i+xx][j+yy];
                            maxi=i+xx;
                            maxj=j+yy;
                        }
                        else
                        {
                            Digest[i+xx][j+yy]=0;
                            digested_count++;
                        }
                    }
                }
                Digest[maxi][maxj]+=digested_count;
                cij[maxi][maxj]=2;
            }
        }
    }
}

void LineDetector::createImageEdges(Mat image, vector<vector<int> > &cij)
{
    //    Size size=image.size();
    //    int IMAGE_WIDTH = size.width;
    //    int IMAGE_HEIGHT = size.height;
    //    vector<vector<int> > order;
    //    order=cij;

    //    for (int i = 0; i < cij.size(); ++i)
    //    {
    //        for (int j = 0; j < cij[0].size(); ++j)
    //        {
    //            order[i][j]=0;
    //        }
    //    }

    //    for (int i = 0+resolution_of_digestion + nearest_neighbour_scope  ; i < cij.size()-resolution_of_digestion - nearest_neighbour_scope  ; ++i)
    //    {
    //        for (int j = 0+resolution_of_digestion + nearest_neighbour_scope  ; j < cij[0].size()-resolution_of_digestion - nearest_neighbour_scope  ; ++j)
    //        {
    //            if((j > size.height) || (j < 0)
    //                    || (i > size.width) || i < 0)
    //                continue;



    //            ///consider only the major nodes
    //            if(cij[i][j]==2)
    //            {   ////look for major nodes in the neighbourhood
    //                for (int x = -1*resolution_of_digestion - nearest_neighbour_scope  ; x < resolution_of_digestion+1 + nearest_neighbour_scope  ; x++)
    //                {
    //                    for (int y = -1*resolution_of_digestion - nearest_neighbour_scope  ; y < resolution_of_digestion+1 + nearest_neighbour_scope  ; ++y)
    //                    {   ///conditional to locate a major node neighbour
    //                        if(cij[i+x][j+y]==2)
    //                        {   Point p1,p2;
    //                            p1.x=i;
    //                            p1.y=j;
    //                            p2.x=i+(x);
    //                            p2.y=j+y;
    //                            float filled_ratio=0;
    //                            int count_of_minor_nodes=0;
    //                            LineIterator it(image, p1, p2, 8);


    //                            ///loop to traverse the line joning the node and its neighbour
    //                            for(int ii = 0; ii < it.count; ii++, ++it)
    //                            {   ///loop to search the neighbourhood of each of the points of the line

    //                                for (int xx = -1*line_traversal_scope; xx < line_traversal_scope+1; xx++)
    //                                {
    //                                    for (int yy = -1*line_traversal_scope; yy < line_traversal_scope+1; ++yy)
    //                                        ///check whether the point of the line is a minor passing node
    //                                    {
    //                                        Point line_point =   it.pos();

    //                                        int search_point_x = line_point.x+xx;
    //                                        int search_point_y = line_point.y+yy;

    //                                        if(cij[search_point_x][search_point_y]==1)
    //                                        {
    //                                            count_of_minor_nodes++;
    //                                        }
    //                                    }
    //                                }

    //                                filled_ratio=(count_of_minor_nodes)/(it.count);
    //                                RNG& rng = theRNG();
    //                                if(filled_ratio>=Tolerance)
    //                                {  if(p1==p2) break;
    //                                    //                  line(image, p1, p2, Scalar(rng.uniform(254,255),rng.uniform(254,255),rng.uniform(254,255)),rng.uniform(radius_of_major_nodes,radius_of_major_nodes), 8);
    //                                    count_of_minor_nodes=0;
    //                                    order[p1.x][p1.y]++;
    //                                    order[p2.x][p2.y]++;
    //                                }
    //                            }

    //                        }
    //                    }
    //                }
    //            }
    //        }
    //    }


    //    for (int i = 0; i < cij.size(); ++i)
    //    {
    //        for (int j = 0; j < cij[0].size(); ++j)
    //        { Point pt(i,j);
    //            switch(order[i][j])
    //            {
    //            case 0: break;
    //            case 1:  circle(image, cvPoint(i, j),radius_of_major_nodes, Scalar(255,255, 0),-1); break;
    //            case 2: circle(image, cvPoint(i, j),radius_of_major_nodes, Scalar(0, 255, 0),-1);  break;
    //            case 3: circle(image, cvPoint(i, j),radius_of_major_nodes, Scalar(0, 0, 255),-1);  break;
    //            default : circle(image, cvPoint(i, j),radius_of_major_nodes, Scalar(250, 125, 255),-1); break ;
    //            }
    //        }
    //    }
}

void LineDetector::createImageNodes(Mat image, vector<vector<int> > &cij)
{
    //    for (int i = 0; i < cij.size(); ++i)
    //    {
    //        for (int j = 0; j < cij[5].size(); ++j)
    //        {

    //            {
    //                if(cij[i][j] == 1)
    //                    circle(image, Point(i,j), 3, Scalar(255, 125, 0));
    //                if(cij[i][j] ==2)
    //                    circle(image, Point(i,j), radius_of_major_nodes, Scalar(12, 255, 55));
    //            }
    //        }
    //    }
}

void LineDetector::convertNodestoPoint(std::vector<std::vector<int> > &cij)
{
    for (int i = 0; i < cij.size(); ++i)
        for (int j = 0; j < cij[5].size(); ++j)
            if(cij[i][j] ==2)
                nodes_.push_back(Point(i,j));
}
