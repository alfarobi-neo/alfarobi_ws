#include "test_cam/test_cam.h"

TestCam::TestCam()
    : nh_(ros::this_node::getName()),
      it_(this->nh_){
    it_pubs_ = it_.advertise("image_out",100);
    it_subs_ = it_.subscribe("image_raw",1, &TestCam::imageCallback,this);
}

TestCam::~TestCam(){

}


void TestCam::publishImage(){
    cv_img_pub_.header.seq++;
    cv_img_pub_.header.stamp = sub_time_;
    cv_img_pub_.header.frame_id = img_id_;

    switch(img_encoding_){
        case IMG_MONO:cv_img_pub_.encoding = sensor_msgs::image_encodings::MONO8;break;
        case IMG_RGB:cv_img_pub_.encoding = sensor_msgs::image_encodings::RGB8;break;
        default:cv_img_pub_.encoding = sensor_msgs::image_encodings::RGB8;break;
    }

    cv_img_pub_.image = out_img_.clone();
    it_pubs_.publish(cv_img_pub_.toImageMsg());
}

void TestCam::setInputImage(const cv::Mat &_in_img){
    if(img_arrive_){
        in_img_ = _in_img.clone();
    }
    img_arrive_ = false;
}

void TestCam::setOutputImage(const cv::Mat &_out_img){
    out_img_ = _out_img.clone();
}

void TestCam::imageCallback(const sensor_msgs::ImageConstPtr &msg){
    try{
        if(msg->encoding.compare(sensor_msgs::image_encodings::MONO8)==0){
            img_encoding_ = IMG_MONO;
        }else if(msg->encoding.compare(sensor_msgs::image_encodings::RGB8)==0){
            img_encoding_ = IMG_RGB;
        }
        cv_img_ptr_sub_ = cv_bridge::toCvCopy(msg,msg->encoding);
    }catch(cv_bridge::Exception &e){
        ROS_ERROR("%s",e.what());
    }

    img_id_ = msg->header.frame_id;
    sub_time_ = msg->header.stamp;
    img_arrive_ = true;
}


void TestCam::process(){
	if(cv_img_ptr_sub_==NULL)return;
    setInputImage(cv_img_ptr_sub_->image);

    //calc.............

    setOutputImage(in_img_);

}
