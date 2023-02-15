#include <v10_pillar_detector/v10_pillar_detector.h>

int main(int argc,char **argv){
    ros::init(argc,argv,"v10_pillar_detector_node");

    Pillar_Detector detector;

    ros::Rate loop_rate(30);

    while(ros::ok()){

        detector.process();

        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}