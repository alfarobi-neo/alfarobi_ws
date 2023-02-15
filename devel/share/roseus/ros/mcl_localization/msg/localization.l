;; Auto-generated. Do not edit!


(when (boundp 'mcl_localization::localization)
  (if (not (find-package "MCL_LOCALIZATION"))
    (make-package "MCL_LOCALIZATION"))
  (shadow 'localization (find-package "MCL_LOCALIZATION")))
(unless (find-package "MCL_LOCALIZATION::LOCALIZATION")
  (make-package "MCL_LOCALIZATION::LOCALIZATION"))

(in-package "ROS")
;;//! \htmlinclude localization.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass mcl_localization::localization
  :super ros::object
  :slots (_belief _particles _best_estimation _best_estimation_weight ))

(defmethod mcl_localization::localization
  (:init
   (&key
    ((:belief __belief) (instance geometry_msgs::Pose2D :init))
    ((:particles __particles) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose2D :init) r)) r))
    ((:best_estimation __best_estimation) (instance geometry_msgs::Pose2D :init))
    ((:best_estimation_weight __best_estimation_weight) 0.0)
    )
   (send-super :init)
   (setq _belief __belief)
   (setq _particles __particles)
   (setq _best_estimation __best_estimation)
   (setq _best_estimation_weight (float __best_estimation_weight))
   self)
  (:belief
   (&rest __belief)
   (if (keywordp (car __belief))
       (send* _belief __belief)
     (progn
       (if __belief (setq _belief (car __belief)))
       _belief)))
  (:particles
   (&rest __particles)
   (if (keywordp (car __particles))
       (send* _particles __particles)
     (progn
       (if __particles (setq _particles (car __particles)))
       _particles)))
  (:best_estimation
   (&rest __best_estimation)
   (if (keywordp (car __best_estimation))
       (send* _best_estimation __best_estimation)
     (progn
       (if __best_estimation (setq _best_estimation (car __best_estimation)))
       _best_estimation)))
  (:best_estimation_weight
   (&optional __best_estimation_weight)
   (if __best_estimation_weight (setq _best_estimation_weight __best_estimation_weight)) _best_estimation_weight)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose2D _belief
    (send _belief :serialization-length)
    ;; geometry_msgs/Pose2D[] _particles
    (apply #'+ (send-all _particles :serialization-length)) 4
    ;; geometry_msgs/Pose2D _best_estimation
    (send _best_estimation :serialization-length)
    ;; float64 _best_estimation_weight
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D _belief
       (send _belief :serialize s)
     ;; geometry_msgs/Pose2D[] _particles
     (write-long (length _particles) s)
     (dolist (elem _particles)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Pose2D _best_estimation
       (send _best_estimation :serialize s)
     ;; float64 _best_estimation_weight
       (sys::poke _best_estimation_weight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D _belief
     (send _belief :deserialize buf ptr-) (incf ptr- (send _belief :serialization-length))
   ;; geometry_msgs/Pose2D[] _particles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _particles (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose2D :init) r)) r))
     (dolist (elem- _particles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Pose2D _best_estimation
     (send _best_estimation :deserialize buf ptr-) (incf ptr- (send _best_estimation :serialization-length))
   ;; float64 _best_estimation_weight
     (setq _best_estimation_weight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mcl_localization::localization :md5sum-) "4ee2942741d2d9b68d5d3bd4e4003416")
(setf (get mcl_localization::localization :datatype-) "mcl_localization/localization")
(setf (get mcl_localization::localization :definition-)
      "geometry_msgs/Pose2D belief
geometry_msgs/Pose2D[] particles
geometry_msgs/Pose2D best_estimation
float64 best_estimation_weight

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :mcl_localization/localization "4ee2942741d2d9b68d5d3bd4e4003416")


