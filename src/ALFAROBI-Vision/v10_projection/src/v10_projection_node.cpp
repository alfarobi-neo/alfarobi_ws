#include "v10_projection/v10_projection.h"

int main(int argc, char **argv){
    ros::init(argc, argv, "v10_projection_node");

    Projection pocalization;

    ros::Rate loop_rate(30);
    while(ros::ok()){

        pocalization.process();

        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}
