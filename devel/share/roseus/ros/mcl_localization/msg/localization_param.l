;; Auto-generated. Do not edit!


(when (boundp 'mcl_localization::localization_param)
  (if (not (find-package "MCL_LOCALIZATION"))
    (make-package "MCL_LOCALIZATION"))
  (shadow 'localization_param (find-package "MCL_LOCALIZATION")))
(unless (find-package "MCL_LOCALIZATION::LOCALIZATION_PARAM")
  (make-package "MCL_LOCALIZATION::LOCALIZATION_PARAM"))

(in-package "ROS")
;;//! \htmlinclude localization_param.msg.html


(defclass mcl_localization::localization_param
  :super ros::object
  :slots (_mcl_afast _mcl_aslow _mcl_variance _mgauss_x _mgauss_y _mgauss_w _vgauss_x _vgauss_y _mcl_wcmps ))

(defmethod mcl_localization::localization_param
  (:init
   (&key
    ((:mcl_afast __mcl_afast) 0.0)
    ((:mcl_aslow __mcl_aslow) 0.0)
    ((:mcl_variance __mcl_variance) 0.0)
    ((:mgauss_x __mgauss_x) 0.0)
    ((:mgauss_y __mgauss_y) 0.0)
    ((:mgauss_w __mgauss_w) 0.0)
    ((:vgauss_x __vgauss_x) 0.0)
    ((:vgauss_y __vgauss_y) 0.0)
    ((:mcl_wcmps __mcl_wcmps) 0.0)
    )
   (send-super :init)
   (setq _mcl_afast (float __mcl_afast))
   (setq _mcl_aslow (float __mcl_aslow))
   (setq _mcl_variance (float __mcl_variance))
   (setq _mgauss_x (float __mgauss_x))
   (setq _mgauss_y (float __mgauss_y))
   (setq _mgauss_w (float __mgauss_w))
   (setq _vgauss_x (float __vgauss_x))
   (setq _vgauss_y (float __vgauss_y))
   (setq _mcl_wcmps (float __mcl_wcmps))
   self)
  (:mcl_afast
   (&optional __mcl_afast)
   (if __mcl_afast (setq _mcl_afast __mcl_afast)) _mcl_afast)
  (:mcl_aslow
   (&optional __mcl_aslow)
   (if __mcl_aslow (setq _mcl_aslow __mcl_aslow)) _mcl_aslow)
  (:mcl_variance
   (&optional __mcl_variance)
   (if __mcl_variance (setq _mcl_variance __mcl_variance)) _mcl_variance)
  (:mgauss_x
   (&optional __mgauss_x)
   (if __mgauss_x (setq _mgauss_x __mgauss_x)) _mgauss_x)
  (:mgauss_y
   (&optional __mgauss_y)
   (if __mgauss_y (setq _mgauss_y __mgauss_y)) _mgauss_y)
  (:mgauss_w
   (&optional __mgauss_w)
   (if __mgauss_w (setq _mgauss_w __mgauss_w)) _mgauss_w)
  (:vgauss_x
   (&optional __vgauss_x)
   (if __vgauss_x (setq _vgauss_x __vgauss_x)) _vgauss_x)
  (:vgauss_y
   (&optional __vgauss_y)
   (if __vgauss_y (setq _vgauss_y __vgauss_y)) _vgauss_y)
  (:mcl_wcmps
   (&optional __mcl_wcmps)
   (if __mcl_wcmps (setq _mcl_wcmps __mcl_wcmps)) _mcl_wcmps)
  (:serialization-length
   ()
   (+
    ;; float64 _mcl_afast
    8
    ;; float64 _mcl_aslow
    8
    ;; float64 _mcl_variance
    8
    ;; float64 _mgauss_x
    8
    ;; float64 _mgauss_y
    8
    ;; float64 _mgauss_w
    8
    ;; float64 _vgauss_x
    8
    ;; float64 _vgauss_y
    8
    ;; float64 _mcl_wcmps
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _mcl_afast
       (sys::poke _mcl_afast (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mcl_aslow
       (sys::poke _mcl_aslow (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mcl_variance
       (sys::poke _mcl_variance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mgauss_x
       (sys::poke _mgauss_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mgauss_y
       (sys::poke _mgauss_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mgauss_w
       (sys::poke _mgauss_w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vgauss_x
       (sys::poke _vgauss_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vgauss_y
       (sys::poke _vgauss_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mcl_wcmps
       (sys::poke _mcl_wcmps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _mcl_afast
     (setq _mcl_afast (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mcl_aslow
     (setq _mcl_aslow (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mcl_variance
     (setq _mcl_variance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mgauss_x
     (setq _mgauss_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mgauss_y
     (setq _mgauss_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mgauss_w
     (setq _mgauss_w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vgauss_x
     (setq _vgauss_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vgauss_y
     (setq _vgauss_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mcl_wcmps
     (setq _mcl_wcmps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mcl_localization::localization_param :md5sum-) "8a9ad945fdf7665608477890478ed39f")
(setf (get mcl_localization::localization_param :datatype-) "mcl_localization/localization_param")
(setf (get mcl_localization::localization_param :definition-)
      "float64 mcl_afast
float64 mcl_aslow
float64 mcl_variance
float64 mgauss_x
float64 mgauss_y
float64 mgauss_w
float64 vgauss_x
float64 vgauss_y
float64 mcl_wcmps

")



(provide :mcl_localization/localization_param "8a9ad945fdf7665608477890478ed39f")


