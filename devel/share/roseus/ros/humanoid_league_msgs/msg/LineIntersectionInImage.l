;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::LineIntersectionInImage)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'LineIntersectionInImage (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::LINEINTERSECTIONINIMAGE")
  (make-package "HUMANOID_LEAGUE_MSGS::LINEINTERSECTIONINIMAGE"))

(in-package "ROS")
;;//! \htmlinclude LineIntersectionInImage.msg.html


(intern "*UNDEFINED*" (find-package "HUMANOID_LEAGUE_MSGS::LINEINTERSECTIONINIMAGE"))
(shadow '*UNDEFINED* (find-package "HUMANOID_LEAGUE_MSGS::LINEINTERSECTIONINIMAGE"))
(defconstant humanoid_league_msgs::LineIntersectionInImage::*UNDEFINED* 0)
(intern "*L*" (find-package "HUMANOID_LEAGUE_MSGS::LINEINTERSECTIONINIMAGE"))
(shadow '*L* (find-package "HUMANOID_LEAGUE_MSGS::LINEINTERSECTIONINIMAGE"))
(defconstant humanoid_league_msgs::LineIntersectionInImage::*L* 1)
(intern "*T*" (find-package "HUMANOID_LEAGUE_MSGS::LINEINTERSECTIONINIMAGE"))
(shadow '*T* (find-package "HUMANOID_LEAGUE_MSGS::LINEINTERSECTIONINIMAGE"))
(defconstant humanoid_league_msgs::LineIntersectionInImage::*T* 2)
(intern "*X*" (find-package "HUMANOID_LEAGUE_MSGS::LINEINTERSECTIONINIMAGE"))
(shadow '*X* (find-package "HUMANOID_LEAGUE_MSGS::LINEINTERSECTIONINIMAGE"))
(defconstant humanoid_league_msgs::LineIntersectionInImage::*X* 3)

(defun humanoid_league_msgs::LineIntersectionInImage-to-symbol (const)
  (cond
        ((= const 0) 'humanoid_league_msgs::LineIntersectionInImage::*UNDEFINED*)
        ((= const 1) 'humanoid_league_msgs::LineIntersectionInImage::*L*)
        ((= const 2) 'humanoid_league_msgs::LineIntersectionInImage::*T*)
        ((= const 3) 'humanoid_league_msgs::LineIntersectionInImage::*X*)
        (t nil)))

(defclass humanoid_league_msgs::LineIntersectionInImage
  :super ros::object
  :slots (_type _segments _confidence ))

(defmethod humanoid_league_msgs::LineIntersectionInImage
  (:init
   (&key
    ((:type __type) 0)
    ((:segments __segments) (instance humanoid_league_msgs::LineSegmentInImage :init))
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _segments __segments)
   (setq _confidence (float __confidence))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:segments
   (&rest __segments)
   (if (keywordp (car __segments))
       (send* _segments __segments)
     (progn
       (if __segments (setq _segments (car __segments)))
       _segments)))
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; humanoid_league_msgs/LineSegmentInImage _segments
    (send _segments :serialization-length)
    ;; float32 _confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; humanoid_league_msgs/LineSegmentInImage _segments
       (send _segments :serialize s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; humanoid_league_msgs/LineSegmentInImage _segments
     (send _segments :deserialize buf ptr-) (incf ptr- (send _segments :serialization-length))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get humanoid_league_msgs::LineIntersectionInImage :md5sum-) "980e372a707e53581170ae6e03b7c340")
(setf (get humanoid_league_msgs::LineIntersectionInImage :datatype-) "humanoid_league_msgs/LineIntersectionInImage")
(setf (get humanoid_league_msgs::LineIntersectionInImage :definition-)
      "# A line intersection feature in the image

# The type defines which kind of intersection is present
uint8 UNDEFINED=0
uint8 L=1
uint8 T=2
uint8 X=3
uint8 type

# The line segments related to this crossing
humanoid_league_msgs/LineSegmentInImage segments

# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence

================================================================================
MSG: humanoid_league_msgs/LineSegmentInImage
# A normal line segment in the image

# Two points defining the vector of the line. The center is orthogonally in the middle of the line
geometry_msgs/Point start
geometry_msgs/Point end

# Orthogonal to the significant vector
float32 start_width
float32 end_with

# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :humanoid_league_msgs/LineIntersectionInImage "980e372a707e53581170ae6e03b7c340")


