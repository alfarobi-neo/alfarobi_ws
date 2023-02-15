#include <v9_ball_pillar_detector/v9_ball_pillar_detector.h>

int main(int argc,char **argv){

    ros::init(argc,argv,"v9_ball_pillar_detector_node");

    BallDetector ball_detector;

    ros::Rate loop_rate(30);

    while(ros::ok()){

        ball_detector.process();

        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}
