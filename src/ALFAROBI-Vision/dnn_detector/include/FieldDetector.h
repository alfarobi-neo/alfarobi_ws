//FieldDetector.hpp
// Created on: May 12, 2015
//     Author: Hafez Farazi <farazi@ais.uni-bonn.de>
#pragma once
#include <opencv2/opencv.hpp>
#include <math.h>
#include "tools.h"
#include "dnn_config.h"

using namespace cv;
/**
* @ingroup VisionModule
*
* @brief For detecting field boundary
**/
class FieldDetector
{
public:
  inline ~FieldDetector()
  {
  }

  void FindInField(const Mat &srcHsvImg, const Mat &tmplateGrayImg,
      Mat *dstGrayImgs, HsvFilter *ranges, bool *inTemplate,
      int size = 1);
};

