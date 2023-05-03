;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::Speak)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'Speak (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::SPEAK")
  (make-package "HUMANOID_LEAGUE_MSGS::SPEAK"))

(in-package "ROS")
;;//! \htmlinclude Speak.msg.html


(intern "*LOW_PRIORITY*" (find-package "HUMANOID_LEAGUE_MSGS::SPEAK"))
(shadow '*LOW_PRIORITY* (find-package "HUMANOID_LEAGUE_MSGS::SPEAK"))
(defconstant humanoid_league_msgs::Speak::*LOW_PRIORITY* 0)
(intern "*MID_PRIORITY*" (find-package "HUMANOID_LEAGUE_MSGS::SPEAK"))
(shadow '*MID_PRIORITY* (find-package "HUMANOID_LEAGUE_MSGS::SPEAK"))
(defconstant humanoid_league_msgs::Speak::*MID_PRIORITY* 1)
(intern "*HIGH_PRIORITY*" (find-package "HUMANOID_LEAGUE_MSGS::SPEAK"))
(shadow '*HIGH_PRIORITY* (find-package "HUMANOID_LEAGUE_MSGS::SPEAK"))
(defconstant humanoid_league_msgs::Speak::*HIGH_PRIORITY* 2)

(defun humanoid_league_msgs::Speak-to-symbol (const)
  (cond
        ((= const 0) 'humanoid_league_msgs::Speak::*LOW_PRIORITY*)
        ((= const 1) 'humanoid_league_msgs::Speak::*MID_PRIORITY*)
        ((= const 2) 'humanoid_league_msgs::Speak::*HIGH_PRIORITY*)
        (t nil)))

(defclass humanoid_league_msgs::Speak
  :super ros::object
  :slots (_text _priority _filename ))

(defmethod humanoid_league_msgs::Speak
  (:init
   (&key
    ((:text __text) "")
    ((:priority __priority) 0)
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _text (string __text))
   (setq _priority (round __priority))
   (setq _filename (string __filename))
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _text
    4 (length _text)
    ;; uint8 _priority
    1
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; uint8 _priority
       (write-byte _priority s)
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _priority
     (setq _priority (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get humanoid_league_msgs::Speak :md5sum-) "f360f3d1d1c01a5c835f4716354e4c26")
(setf (get humanoid_league_msgs::Speak :datatype-) "humanoid_league_msgs/Speak")
(setf (get humanoid_league_msgs::Speak :definition-)
      "# This message is used to activate the audio output of the robot
# This can be used for debug proposed but also for natural language team communication

# The text will only be outputed if \"filename\" is empty
string text

uint8 LOW_PRIORITY=0
uint8 MID_PRIORITY=1
uint8 HIGH_PRIORITY=2
uint8 priority

# If a file should be read, the path has to be specified here. Otherwise this string should be null
string filename
")



(provide :humanoid_league_msgs/Speak "f360f3d1d1c01a5c835f4716354e4c26")


