#pragma once

#include <yaml-cpp/yaml.h>
#include <eigen3/Eigen/Eigen>

class hsvRangeC
{
public:
  bool active;
  int h0;
  int h1;
  int s0;
  int s1;
  int v0;
  int v1;

  void low(Eigen::Vector3d low){h0 = low.x(); s0 = low.y(); v0=low.z();}
  void high(Eigen::Vector3d high){h1 = high.x(); s1 = high.y(); v1=high.z();}
};

struct Vec3 { int x; int y; int z; };
