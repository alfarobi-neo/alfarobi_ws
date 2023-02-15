#include <hline_square_detector/hline_square_detector.h>

int main(int argc,char **argv){

    ros::init(argc,argv,"hline_square_detector_node");

    HLineSquare hline_square;

    ros::Rate loop_rate(30);

    while(ros::ok()){

        hline_square.process();

        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}
