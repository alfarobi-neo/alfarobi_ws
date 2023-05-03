;; Auto-generated. Do not edit!


(when (boundp 'humanoid_league_msgs::TeamData)
  (if (not (find-package "HUMANOID_LEAGUE_MSGS"))
    (make-package "HUMANOID_LEAGUE_MSGS"))
  (shadow 'TeamData (find-package "HUMANOID_LEAGUE_MSGS")))
(unless (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA")
  (make-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))

(in-package "ROS")
;;//! \htmlinclude TeamData.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ROLE_IDLING*" (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(shadow '*ROLE_IDLING* (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(defconstant humanoid_league_msgs::TeamData::*ROLE_IDLING* 0)
(intern "*ROLE_OTHER*" (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(shadow '*ROLE_OTHER* (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(defconstant humanoid_league_msgs::TeamData::*ROLE_OTHER* 1)
(intern "*ROLE_STRIKER*" (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(shadow '*ROLE_STRIKER* (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(defconstant humanoid_league_msgs::TeamData::*ROLE_STRIKER* 2)
(intern "*ROLE_SUPPORTER*" (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(shadow '*ROLE_SUPPORTER* (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(defconstant humanoid_league_msgs::TeamData::*ROLE_SUPPORTER* 3)
(intern "*ROLE_DEFENDER*" (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(shadow '*ROLE_DEFENDER* (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(defconstant humanoid_league_msgs::TeamData::*ROLE_DEFENDER* 4)
(intern "*ROLE_GOALIE*" (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(shadow '*ROLE_GOALIE* (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(defconstant humanoid_league_msgs::TeamData::*ROLE_GOALIE* 5)
(intern "*ACTION_UNDEFINED*" (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(shadow '*ACTION_UNDEFINED* (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(defconstant humanoid_league_msgs::TeamData::*ACTION_UNDEFINED* 0)
(intern "*ACTION_POSITIONING*" (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(shadow '*ACTION_POSITIONING* (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(defconstant humanoid_league_msgs::TeamData::*ACTION_POSITIONING* 1)
(intern "*ACTION_GOING_TO_BALL*" (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(shadow '*ACTION_GOING_TO_BALL* (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(defconstant humanoid_league_msgs::TeamData::*ACTION_GOING_TO_BALL* 2)
(intern "*ACTION_TRYING_TO_SCORE*" (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(shadow '*ACTION_TRYING_TO_SCORE* (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(defconstant humanoid_league_msgs::TeamData::*ACTION_TRYING_TO_SCORE* 3)
(intern "*ACTION_WAITING*" (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(shadow '*ACTION_WAITING* (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(defconstant humanoid_league_msgs::TeamData::*ACTION_WAITING* 4)
(intern "*STATE_INACTIVE*" (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(shadow '*STATE_INACTIVE* (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(defconstant humanoid_league_msgs::TeamData::*STATE_INACTIVE* 0)
(intern "*STATE_ACTIVE*" (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(shadow '*STATE_ACTIVE* (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(defconstant humanoid_league_msgs::TeamData::*STATE_ACTIVE* 1)
(intern "*STATE_PENALIZED*" (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(shadow '*STATE_PENALIZED* (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(defconstant humanoid_league_msgs::TeamData::*STATE_PENALIZED* 2)
(intern "*UNSPECIFIED*" (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(shadow '*UNSPECIFIED* (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(defconstant humanoid_league_msgs::TeamData::*UNSPECIFIED* 0)
(intern "*LEFT*" (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(shadow '*LEFT* (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(defconstant humanoid_league_msgs::TeamData::*LEFT* 1)
(intern "*RIGHT*" (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(shadow '*RIGHT* (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(defconstant humanoid_league_msgs::TeamData::*RIGHT* 2)
(intern "*CENTER*" (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(shadow '*CENTER* (find-package "HUMANOID_LEAGUE_MSGS::TEAMDATA"))
(defconstant humanoid_league_msgs::TeamData::*CENTER* 3)

(defun humanoid_league_msgs::TeamData-to-symbol (const)
  (cond
        ((= const 0) 'humanoid_league_msgs::TeamData::*ROLE_IDLING*)
        ((= const 1) 'humanoid_league_msgs::TeamData::*ROLE_OTHER*)
        ((= const 2) 'humanoid_league_msgs::TeamData::*ROLE_STRIKER*)
        ((= const 3) 'humanoid_league_msgs::TeamData::*ROLE_SUPPORTER*)
        ((= const 4) 'humanoid_league_msgs::TeamData::*ROLE_DEFENDER*)
        ((= const 5) 'humanoid_league_msgs::TeamData::*ROLE_GOALIE*)
        ((= const 0) 'humanoid_league_msgs::TeamData::*ACTION_UNDEFINED*)
        ((= const 1) 'humanoid_league_msgs::TeamData::*ACTION_POSITIONING*)
        ((= const 2) 'humanoid_league_msgs::TeamData::*ACTION_GOING_TO_BALL*)
        ((= const 3) 'humanoid_league_msgs::TeamData::*ACTION_TRYING_TO_SCORE*)
        ((= const 4) 'humanoid_league_msgs::TeamData::*ACTION_WAITING*)
        ((= const 0) 'humanoid_league_msgs::TeamData::*STATE_INACTIVE*)
        ((= const 1) 'humanoid_league_msgs::TeamData::*STATE_ACTIVE*)
        ((= const 2) 'humanoid_league_msgs::TeamData::*STATE_PENALIZED*)
        ((= const 0) 'humanoid_league_msgs::TeamData::*UNSPECIFIED*)
        ((= const 1) 'humanoid_league_msgs::TeamData::*LEFT*)
        ((= const 2) 'humanoid_league_msgs::TeamData::*RIGHT*)
        ((= const 3) 'humanoid_league_msgs::TeamData::*CENTER*)
        (t nil)))

(defclass humanoid_league_msgs::TeamData
  :super ros::object
  :slots (_header _robot_ids _role _action _state _robot_positions _ball_relative _oppgoal_relative _opponent_robot_a _opponent_robot_b _opponent_robot_c _opponent_robot_d _team_robot_a _team_robot_b _team_robot_c _avg_walking_speed _time_to_position_at_ball _max_kicking_distance _offensive_side ))

(defmethod humanoid_league_msgs::TeamData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_ids __robot_ids) (make-array 0 :initial-element 0 :element-type :char))
    ((:role __role) (make-array 0 :initial-element 0 :element-type :char))
    ((:action __action) (make-array 0 :initial-element 0 :element-type :char))
    ((:state __state) (make-array 0 :initial-element 0 :element-type :char))
    ((:robot_positions __robot_positions) ())
    ((:ball_relative __ball_relative) ())
    ((:oppgoal_relative __oppgoal_relative) ())
    ((:opponent_robot_a __opponent_robot_a) ())
    ((:opponent_robot_b __opponent_robot_b) ())
    ((:opponent_robot_c __opponent_robot_c) ())
    ((:opponent_robot_d __opponent_robot_d) ())
    ((:team_robot_a __team_robot_a) ())
    ((:team_robot_b __team_robot_b) ())
    ((:team_robot_c __team_robot_c) ())
    ((:avg_walking_speed __avg_walking_speed) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:time_to_position_at_ball __time_to_position_at_ball) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:max_kicking_distance __max_kicking_distance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:offensive_side __offensive_side) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_ids __robot_ids)
   (setq _role __role)
   (setq _action __action)
   (setq _state __state)
   (setq _robot_positions __robot_positions)
   (setq _ball_relative __ball_relative)
   (setq _oppgoal_relative __oppgoal_relative)
   (setq _opponent_robot_a __opponent_robot_a)
   (setq _opponent_robot_b __opponent_robot_b)
   (setq _opponent_robot_c __opponent_robot_c)
   (setq _opponent_robot_d __opponent_robot_d)
   (setq _team_robot_a __team_robot_a)
   (setq _team_robot_b __team_robot_b)
   (setq _team_robot_c __team_robot_c)
   (setq _avg_walking_speed __avg_walking_speed)
   (setq _time_to_position_at_ball __time_to_position_at_ball)
   (setq _max_kicking_distance __max_kicking_distance)
   (setq _offensive_side __offensive_side)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:robot_ids
   (&optional __robot_ids)
   (if __robot_ids (setq _robot_ids __robot_ids)) _robot_ids)
  (:role
   (&optional __role)
   (if __role (setq _role __role)) _role)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:robot_positions
   (&rest __robot_positions)
   (if (keywordp (car __robot_positions))
       (send* _robot_positions __robot_positions)
     (progn
       (if __robot_positions (setq _robot_positions (car __robot_positions)))
       _robot_positions)))
  (:ball_relative
   (&rest __ball_relative)
   (if (keywordp (car __ball_relative))
       (send* _ball_relative __ball_relative)
     (progn
       (if __ball_relative (setq _ball_relative (car __ball_relative)))
       _ball_relative)))
  (:oppgoal_relative
   (&rest __oppgoal_relative)
   (if (keywordp (car __oppgoal_relative))
       (send* _oppgoal_relative __oppgoal_relative)
     (progn
       (if __oppgoal_relative (setq _oppgoal_relative (car __oppgoal_relative)))
       _oppgoal_relative)))
  (:opponent_robot_a
   (&rest __opponent_robot_a)
   (if (keywordp (car __opponent_robot_a))
       (send* _opponent_robot_a __opponent_robot_a)
     (progn
       (if __opponent_robot_a (setq _opponent_robot_a (car __opponent_robot_a)))
       _opponent_robot_a)))
  (:opponent_robot_b
   (&rest __opponent_robot_b)
   (if (keywordp (car __opponent_robot_b))
       (send* _opponent_robot_b __opponent_robot_b)
     (progn
       (if __opponent_robot_b (setq _opponent_robot_b (car __opponent_robot_b)))
       _opponent_robot_b)))
  (:opponent_robot_c
   (&rest __opponent_robot_c)
   (if (keywordp (car __opponent_robot_c))
       (send* _opponent_robot_c __opponent_robot_c)
     (progn
       (if __opponent_robot_c (setq _opponent_robot_c (car __opponent_robot_c)))
       _opponent_robot_c)))
  (:opponent_robot_d
   (&rest __opponent_robot_d)
   (if (keywordp (car __opponent_robot_d))
       (send* _opponent_robot_d __opponent_robot_d)
     (progn
       (if __opponent_robot_d (setq _opponent_robot_d (car __opponent_robot_d)))
       _opponent_robot_d)))
  (:team_robot_a
   (&rest __team_robot_a)
   (if (keywordp (car __team_robot_a))
       (send* _team_robot_a __team_robot_a)
     (progn
       (if __team_robot_a (setq _team_robot_a (car __team_robot_a)))
       _team_robot_a)))
  (:team_robot_b
   (&rest __team_robot_b)
   (if (keywordp (car __team_robot_b))
       (send* _team_robot_b __team_robot_b)
     (progn
       (if __team_robot_b (setq _team_robot_b (car __team_robot_b)))
       _team_robot_b)))
  (:team_robot_c
   (&rest __team_robot_c)
   (if (keywordp (car __team_robot_c))
       (send* _team_robot_c __team_robot_c)
     (progn
       (if __team_robot_c (setq _team_robot_c (car __team_robot_c)))
       _team_robot_c)))
  (:avg_walking_speed
   (&optional __avg_walking_speed)
   (if __avg_walking_speed (setq _avg_walking_speed __avg_walking_speed)) _avg_walking_speed)
  (:time_to_position_at_ball
   (&optional __time_to_position_at_ball)
   (if __time_to_position_at_ball (setq _time_to_position_at_ball __time_to_position_at_ball)) _time_to_position_at_ball)
  (:max_kicking_distance
   (&optional __max_kicking_distance)
   (if __max_kicking_distance (setq _max_kicking_distance __max_kicking_distance)) _max_kicking_distance)
  (:offensive_side
   (&optional __offensive_side)
   (if __offensive_side (setq _offensive_side __offensive_side)) _offensive_side)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8[] _robot_ids
    (* 1    (length _robot_ids)) 4
    ;; uint8[] _role
    (* 1    (length _role)) 4
    ;; uint8[] _action
    (* 1    (length _action)) 4
    ;; uint8[] _state
    (* 1    (length _state)) 4
    ;; geometry_msgs/Pose2D[] _robot_positions
    (apply #'+ (send-all _robot_positions :serialization-length)) 4
    ;; humanoid_league_msgs/Position2D[] _ball_relative
    (apply #'+ (send-all _ball_relative :serialization-length)) 4
    ;; humanoid_league_msgs/Position2D[] _oppgoal_relative
    (apply #'+ (send-all _oppgoal_relative :serialization-length)) 4
    ;; humanoid_league_msgs/Position2D[] _opponent_robot_a
    (apply #'+ (send-all _opponent_robot_a :serialization-length)) 4
    ;; humanoid_league_msgs/Position2D[] _opponent_robot_b
    (apply #'+ (send-all _opponent_robot_b :serialization-length)) 4
    ;; humanoid_league_msgs/Position2D[] _opponent_robot_c
    (apply #'+ (send-all _opponent_robot_c :serialization-length)) 4
    ;; humanoid_league_msgs/Position2D[] _opponent_robot_d
    (apply #'+ (send-all _opponent_robot_d :serialization-length)) 4
    ;; humanoid_league_msgs/Position2D[] _team_robot_a
    (apply #'+ (send-all _team_robot_a :serialization-length)) 4
    ;; humanoid_league_msgs/Position2D[] _team_robot_b
    (apply #'+ (send-all _team_robot_b :serialization-length)) 4
    ;; humanoid_league_msgs/Position2D[] _team_robot_c
    (apply #'+ (send-all _team_robot_c :serialization-length)) 4
    ;; float32[] _avg_walking_speed
    (* 4    (length _avg_walking_speed)) 4
    ;; float32[] _time_to_position_at_ball
    (* 4    (length _time_to_position_at_ball)) 4
    ;; float32[] _max_kicking_distance
    (* 4    (length _max_kicking_distance)) 4
    ;; uint8[] _offensive_side
    (* 1    (length _offensive_side)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8[] _robot_ids
     (write-long (length _robot_ids) s)
     (princ _robot_ids s)
     ;; uint8[] _role
     (write-long (length _role) s)
     (princ _role s)
     ;; uint8[] _action
     (write-long (length _action) s)
     (princ _action s)
     ;; uint8[] _state
     (write-long (length _state) s)
     (princ _state s)
     ;; geometry_msgs/Pose2D[] _robot_positions
     (write-long (length _robot_positions) s)
     (dolist (elem _robot_positions)
       (send elem :serialize s)
       )
     ;; humanoid_league_msgs/Position2D[] _ball_relative
     (write-long (length _ball_relative) s)
     (dolist (elem _ball_relative)
       (send elem :serialize s)
       )
     ;; humanoid_league_msgs/Position2D[] _oppgoal_relative
     (write-long (length _oppgoal_relative) s)
     (dolist (elem _oppgoal_relative)
       (send elem :serialize s)
       )
     ;; humanoid_league_msgs/Position2D[] _opponent_robot_a
     (write-long (length _opponent_robot_a) s)
     (dolist (elem _opponent_robot_a)
       (send elem :serialize s)
       )
     ;; humanoid_league_msgs/Position2D[] _opponent_robot_b
     (write-long (length _opponent_robot_b) s)
     (dolist (elem _opponent_robot_b)
       (send elem :serialize s)
       )
     ;; humanoid_league_msgs/Position2D[] _opponent_robot_c
     (write-long (length _opponent_robot_c) s)
     (dolist (elem _opponent_robot_c)
       (send elem :serialize s)
       )
     ;; humanoid_league_msgs/Position2D[] _opponent_robot_d
     (write-long (length _opponent_robot_d) s)
     (dolist (elem _opponent_robot_d)
       (send elem :serialize s)
       )
     ;; humanoid_league_msgs/Position2D[] _team_robot_a
     (write-long (length _team_robot_a) s)
     (dolist (elem _team_robot_a)
       (send elem :serialize s)
       )
     ;; humanoid_league_msgs/Position2D[] _team_robot_b
     (write-long (length _team_robot_b) s)
     (dolist (elem _team_robot_b)
       (send elem :serialize s)
       )
     ;; humanoid_league_msgs/Position2D[] _team_robot_c
     (write-long (length _team_robot_c) s)
     (dolist (elem _team_robot_c)
       (send elem :serialize s)
       )
     ;; float32[] _avg_walking_speed
     (write-long (length _avg_walking_speed) s)
     (dotimes (i (length _avg_walking_speed))
       (sys::poke (elt _avg_walking_speed i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _time_to_position_at_ball
     (write-long (length _time_to_position_at_ball) s)
     (dotimes (i (length _time_to_position_at_ball))
       (sys::poke (elt _time_to_position_at_ball i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _max_kicking_distance
     (write-long (length _max_kicking_distance) s)
     (dotimes (i (length _max_kicking_distance))
       (sys::poke (elt _max_kicking_distance i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint8[] _offensive_side
     (write-long (length _offensive_side) s)
     (princ _offensive_side s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8[] _robot_ids
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _robot_ids (make-array n :element-type :char))
     (replace _robot_ids buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _role
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _role (make-array n :element-type :char))
     (replace _role buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _action
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _action (make-array n :element-type :char))
     (replace _action buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _state
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _state (make-array n :element-type :char))
     (replace _state buf :start2 ptr-) (incf ptr- n))
   ;; geometry_msgs/Pose2D[] _robot_positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robot_positions (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose2D :init) r)) r))
     (dolist (elem- _robot_positions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; humanoid_league_msgs/Position2D[] _ball_relative
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ball_relative (let (r) (dotimes (i n) (push (instance humanoid_league_msgs::Position2D :init) r)) r))
     (dolist (elem- _ball_relative)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; humanoid_league_msgs/Position2D[] _oppgoal_relative
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _oppgoal_relative (let (r) (dotimes (i n) (push (instance humanoid_league_msgs::Position2D :init) r)) r))
     (dolist (elem- _oppgoal_relative)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; humanoid_league_msgs/Position2D[] _opponent_robot_a
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _opponent_robot_a (let (r) (dotimes (i n) (push (instance humanoid_league_msgs::Position2D :init) r)) r))
     (dolist (elem- _opponent_robot_a)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; humanoid_league_msgs/Position2D[] _opponent_robot_b
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _opponent_robot_b (let (r) (dotimes (i n) (push (instance humanoid_league_msgs::Position2D :init) r)) r))
     (dolist (elem- _opponent_robot_b)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; humanoid_league_msgs/Position2D[] _opponent_robot_c
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _opponent_robot_c (let (r) (dotimes (i n) (push (instance humanoid_league_msgs::Position2D :init) r)) r))
     (dolist (elem- _opponent_robot_c)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; humanoid_league_msgs/Position2D[] _opponent_robot_d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _opponent_robot_d (let (r) (dotimes (i n) (push (instance humanoid_league_msgs::Position2D :init) r)) r))
     (dolist (elem- _opponent_robot_d)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; humanoid_league_msgs/Position2D[] _team_robot_a
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _team_robot_a (let (r) (dotimes (i n) (push (instance humanoid_league_msgs::Position2D :init) r)) r))
     (dolist (elem- _team_robot_a)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; humanoid_league_msgs/Position2D[] _team_robot_b
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _team_robot_b (let (r) (dotimes (i n) (push (instance humanoid_league_msgs::Position2D :init) r)) r))
     (dolist (elem- _team_robot_b)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; humanoid_league_msgs/Position2D[] _team_robot_c
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _team_robot_c (let (r) (dotimes (i n) (push (instance humanoid_league_msgs::Position2D :init) r)) r))
     (dolist (elem- _team_robot_c)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _avg_walking_speed
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _avg_walking_speed (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _avg_walking_speed i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _time_to_position_at_ball
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _time_to_position_at_ball (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _time_to_position_at_ball i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _max_kicking_distance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _max_kicking_distance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _max_kicking_distance i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint8[] _offensive_side
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _offensive_side (make-array n :element-type :char))
     (replace _offensive_side buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get humanoid_league_msgs::TeamData :md5sum-) "3c1658268445f044e3a6e26e5ab92357")
(setf (get humanoid_league_msgs::TeamData :datatype-) "humanoid_league_msgs/TeamData")
(setf (get humanoid_league_msgs::TeamData :definition-)
      "# This message contains all information provided by the mitecom standard for team communication.
# Everything is in meters (ROS standard) not to be confused with millimeters (mitecom standard)!
# Set belief values to 0 if object was not recognized.
# More information here: https://github.com/fumanoids/mitecom

std_msgs/Header header

# Every value is an array because we can have multiple robots communicating with us.
# The values match with the robot ids
uint8[] robot_ids

uint8 ROLE_IDLING=0
uint8 ROLE_OTHER=1
uint8 ROLE_STRIKER=2
uint8 ROLE_SUPPORTER=3
uint8 ROLE_DEFENDER=4
uint8 ROLE_GOALIE=5
uint8[] role

uint8 ACTION_UNDEFINED=0
uint8 ACTION_POSITIONING=1
uint8 ACTION_GOING_TO_BALL=2
uint8 ACTION_TRYING_TO_SCORE=3
uint8 ACTION_WAITING=4
uint8[] action

uint8 STATE_INACTIVE=0
uint8 STATE_ACTIVE=1
uint8 STATE_PENALIZED=2
uint8[] state

# Absolute position values
geometry_msgs/Pose2D[] robot_positions

# Relative ball position, theta of Pose2D is not used
Position2D[] ball_relative

# Relative position of the opponent goal, theta of Pose2D is not used
# This is helpful if the robot has no global position, but sees the goal
Position2D[] oppgoal_relative

# Positions of opponent robots, if they are recognized
# The letter of the robot is arbitrary as the sending robot does not know the id of a seen robot
Position2D[] opponent_robot_a
Position2D[] opponent_robot_b
Position2D[] opponent_robot_c
Position2D[] opponent_robot_d

# Positions of team robots, if they are recognized
# The letter of the robot is arbitrary as the sending robot does not know the id of a seen robot
Position2D[] team_robot_a
Position2D[] team_robot_b
Position2D[] team_robot_c

float32[] avg_walking_speed
float32[] time_to_position_at_ball
float32[] max_kicking_distance

# Strategy over which side the team tries to attack
# Especially useful during a kickoff
uint8 UNSPECIFIED=0
uint8 LEFT=1
uint8 RIGHT=2
uint8 CENTER=3
uint8[] offensive_side
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
string frame_id

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

================================================================================
MSG: humanoid_league_msgs/Position2D
# The position system is the same as mitecom. The following part is taken from the mitecom documentation:
# https://github.com/fumanoids/mitecom
# The origin of the absolute coordinate center is the center of the middle
# circle (center of field). The x axis points towards the opponent goal, the
# y axis to the left.
#
#      y
#      ^       ______________________
#      |    M  |          |          |  O
#      |    Y  |_ -x, y   |   x, y  _|  P
#      |    G  | |        |        | |  P
# 0    +    O  | |       ( )       | |  G
#      |    A  |_|        |        |_|  O
#      |    L  |  -x,-y   |   x,-y   |  A
#      |       |__________|__________|  L
#      |
#      +------------------+--------------> x
#                         0
#
# The 0 value of the orientation is pointing to the opponent side (right side in the image).
# The value increases counter clockwise
# Everything in meters (because it is the ROS standard)

# The header is included to get the time stamp for later use in tf
std_msgs/Header header

geometry_msgs/Pose2D pose
# A certainty rating between 0 and 1, where 1 is the surest.
float32 confidence

")



(provide :humanoid_league_msgs/TeamData "3c1658268445f044e3a6e26e5ab92357")


