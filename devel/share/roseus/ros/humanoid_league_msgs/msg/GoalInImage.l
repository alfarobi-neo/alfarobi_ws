;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::GoalInImage)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'GoalInImage (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::GOALINIMAGE")
  (make-package "HUMANOID_LEAGUE_MSGS::GOALINIMAGE"))

(in-package "ROS")
;;//! \htmlinclude GoalInImage.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass humanoid_league_msgs::GoalInImage
  :super ros::object
  :slots (_header _left_post _right_post _center_direction _confidence ))

(defmethod humanoid_league_msgs::GoalInImage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left_post __left_post) (instance humanoid_league_msgs::PostInImage :init))
    ((:right_post __right_post) (instance humanoid_league_msgs::PostInImage :init))
    ((:center_direction __center_direction) (instance geometry_msgs::Point :init))
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _left_post __left_post)
   (setq _right_post __right_post)
   (setq _center_direction __center_direction)
   (setq _confidence (float __confidence))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:left_post
   (&rest __left_post)
   (if (keywordp (car __left_post))
       (send* _left_post __left_post)
     (progn
       (if __left_post (setq _left_post (car __left_post)))
       _left_post)))
  (:right_post
   (&rest __right_post)
   (if (keywordp (car __right_post))
       (send* _right_post __right_post)
     (progn
       (if __right_post (setq _right_post (car __right_post)))
       _right_post)))
  (:center_direction
   (&rest __center_direction)
   (if (keywordp (car __center_direction))
       (send* _center_direction __center_direction)
     (progn
       (if __center_direction (setq _center_direction (car __center_direction)))
       _center_direction)))
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; humanoid_league_msgs/PostInImage _left_post
    (send _left_post :serialization-length)
    ;; humanoid_league_msgs/PostInImage _right_post
    (send _right_post :serialization-length)
    ;; geometry_msgs/Point _center_direction
    (send _center_direction :serialization-length)
    ;; float32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; humanoid_league_msgs/PostInImage _left_post
       (send _left_post :serialize s)
     ;; humanoid_league_msgs/PostInImage _right_post
       (send _right_post :serialize s)
     ;; geometry_msgs/Point _center_direction
       (send _center_direction :serialize s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; humanoid_league_msgs/PostInImage _left_post
     (send _left_post :deserialize buf ptr-) (incf ptr- (send _left_post :serialization-length))
   ;; humanoid_league_msgs/PostInImage _right_post
     (send _right_post :deserialize buf ptr-) (incf ptr- (send _right_post :serialization-length))
   ;; geometry_msgs/Point _center_direction
     (send _center_direction :deserialize buf ptr-) (incf ptr- (send _center_direction :serialization-length))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get humanoid_league_msgs::GoalInImage :md5sum-) "8496af08ca739a530ae0e0b017a0ba88")
(setf (get humanoid_league_msgs::GoalInImage :datatype-) "humanoid_league_msgs/GoalInImage")
(setf (get humanoid_league_msgs::GoalInImage :definition-)
      "# A goal on the image. Should be extracted from the seen posts and bars

# The header is included to get the time stamp for later use in tf
std_msgs/Header header

# Left post (or the only seen one)
humanoid_league_msgs/PostInImage left_post
# Right post, or null if only one post of the goal is seen
humanoid_league_msgs/PostInImage right_post

# Vector pointing to the (probable) center of the goal.
# Should only be used if only one goal post is visible. If both are visible this should be none.
# This is normally an educated guess, using the goal bar or the position of the post on the image
# The point can also be outside of the image
geometry_msgs/Point center_direction

# A certainty rating between 0 and 1, where 1 is the surest.
# 0 means no goal was found.
float32 confidence

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: humanoid_league_msgs/PostInImage
# A (possible) goal post in the image. It is defined by two end points and a width.

# Two points defining the significant axis of the post
geometry_msgs/Point foot_point
geometry_msgs/Point top_point
# Orthogonal to significant vector (in pixel)
float32 width

# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :humanoid_league_msgs/GoalInImage "8496af08ca739a530ae0e0b017a0ba88")


