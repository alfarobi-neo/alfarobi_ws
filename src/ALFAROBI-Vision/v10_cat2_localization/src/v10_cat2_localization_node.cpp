#include "v10_cat2_localization/v10_cat2_localization.h"

int main(int argc, char **argv){
    ros::init(argc, argv, "v10_cat2_localization_node");

    Cat2Localization cat2_localization;

    ros::Rate loop_rate(30);
    while(ros::ok()){

        cat2_localization.process();

        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}
