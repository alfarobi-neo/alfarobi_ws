#ifndef DNN_CONFIG_H
#define DNN_CONFIG_H
#include <iostream>

const double confidence = 0.3;
const double square = 200;
const double scale = 0.007843;
const double mean = 127.5;

const int FILTER_H_MIN_DEFAULT = 0;
const int FILTER_H_MAX_DEFAULT = 30;
const int FILTER_S_MIN_DEFAULT = 0;
const int FILTER_S_MAX_DEFAULT = 255;
const int FILTER_V_MIN_DEFAULT = 0;
const int FILTER_V_MAX_DEFAULT = 255;

class HsvFilter
{
 public:
  HsvFilter()
      : h0(FILTER_H_MIN_DEFAULT),
        h1(FILTER_H_MAX_DEFAULT),
        s0(FILTER_S_MIN_DEFAULT),
        s1(FILTER_S_MAX_DEFAULT),
        v0(FILTER_V_MIN_DEFAULT),
        v1(FILTER_V_MAX_DEFAULT)
  {
  }

  int h0;
  int h1;
  int s0;
  int s1;
  int v0;
  int v1;
};

class DNNConfig
{
public:
    double confidence_thrs;
    bool debug;
    int inWidth;
    int inHeight;
    double inScaleFactor;
    double meanVal;
    HsvFilter filter_threshold_;
    int fieldThreshold;

    DNNConfig()
        : confidence_thrs(confidence),
          debug(false),
          inWidth(square),
          inHeight(square),
          inScaleFactor(scale),
          meanVal(mean),
          filter_threshold_()
    {

    }


};

#endif // DNN_CONFIG_H
