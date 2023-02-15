#ifndef GOALPOST_GLOBAL_H
#define GOALPOST_GLOBAL_H

#include<opencv2/opencv.hpp>
#include<ros/ros.h>
#include<ros/package.h>
#include<geometry_msgs/Point.h>
#include<sensor_msgs/Image.h>
#include<cv_bridge/cv_bridge.h>
#include<sensor_msgs/image_encodings.h>
#include<iostream>
#include<opencv2/opencv.hpp>
#include<image_transport/image_transport.h>

using namespace std;
using namespace cv;

static void onMouse(int event, int x, int y, int, void*);

class GoalPostDetector{
private:
   ros::NodeHandle nh_;

	image_transport::ImageTransport it_;
	image_transport::Subscriber get_frame_camera;
	
   void GetFrameCamCallback(const sensor_msgs::ImageConstPtr& msg);
	
	Mat frame;
	cv_bridge::CvImagePtr cvImgPtr;
	unsigned int img_encoding_;
	
	
	geometry_msgs::Point goal_pos;
	ros::Publisher goal_pos_pub;
	Mat kosong;

	float KOLOM;
	float BARIS;

	std::string path_yaml;
	int R, G, B;

	bool goal_detected = false;


protected:
	Mat bacaYAML(string namafile);
	void simpanTabel(Mat matrix, string namafile);
	void masukanMatrix(int nilai, Mat gambar, Rect kotak);
	Mat captureInCanvas(Mat frame);

public:
	enum STATE{
	    HITAM = 0,
	    HIJAU = 1,
	    PUTIH = 2,
	    KELUAR = 3
	};

   enum ENCODING{
      IMG_MONO = 0,
      IMG_RGB = 1
    };   
   
	void process();

	GoalPostDetector();
	~GoalPostDetector();
};

#endif
