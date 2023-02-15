////FieldDetector.cpp
//// Created on: May 12, 2015
////     Author: Hafez Farazi <farazi@ais.uni-bonn.de>

#include "FieldDetector.h"
#include "cmath"
#include "math.h"

void FieldDetector::FindInField(const Mat &srcHsvImg, const Mat &tmplateGrayImg,
                                Mat *dstGrayImgs, HsvFilter *ranges, bool *inTemplate,
                                int size)
{
  const int srcSize = srcHsvImg.rows * srcHsvImg.cols;
  int* indexs = new int[4];
  for (int k = 0; k < size; k++)
  {
    indexs[k] = 0;
  }
  uchar* srcHsvImg_D = srcHsvImg.data;
  uchar* tmplateGrayImg_D = tmplateGrayImg.data;

  for (int i = 0; i < srcSize; i++)
  {
    ushort h = srcHsvImg_D[0], s = srcHsvImg_D[1], v = srcHsvImg_D[2];
    if (tmplateGrayImg_D[0] >= 254)
    {
      for (int k = 0; k < size; k++)
      {

        if (h >= ranges[k].h0 && h <= ranges[k].h1
            && s >= ranges[k].s0 && s <= ranges[k].s1
            && v >= ranges[k].v0 && v <= ranges[k].v1)
        {
          dstGrayImgs[k].data[indexs[k]] = 255;
        }
        else
        {
          dstGrayImgs[k].data[indexs[k]] = 0;
        }
      }
    }
    else
    {
      for (int k = 0; k < size; k++)
      {

        if (inTemplate[k])
          continue;
        if (h >= ranges[k].h0 && h <= ranges[k].h1
            && s >= ranges[k].s0 && s <= ranges[k].s1
            && v >= ranges[k].v0 && v <= ranges[k].v1)
        {
          dstGrayImgs[k].data[indexs[k]] = 255;
        }
        else
        {
          dstGrayImgs[k].data[indexs[k]] = 0;
        }
      }
    }

    tmplateGrayImg_D += 1;
    srcHsvImg_D += 3;
    for (int k = 0; k < size; k++)
    {
      indexs[k]++;
    }
  }

  delete[] indexs;
}

