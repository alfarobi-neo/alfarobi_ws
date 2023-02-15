#include "test_cam/test_cam.h"

int main(int argc, char **argv){
    ros::init(argc,argv,"test_cam_node");

    TestCam test;

    ros::Rate loop_rate(30);

    while(ros::ok()){

        test.process();
        test.publishImage();

        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}
