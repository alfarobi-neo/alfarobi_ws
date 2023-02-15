
(cl:in-package :asdf)

(defsystem "humanoid_league_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
               :trajectory_msgs-msg
)
  :components ((:file "_package")
    (:file "AdditionalServoData" :depends-on ("_package_AdditionalServoData"))
    (:file "_package_AdditionalServoData" :depends-on ("_package"))
    (:file "Animation" :depends-on ("_package_Animation"))
    (:file "_package_Animation" :depends-on ("_package"))
    (:file "BallInImage" :depends-on ("_package_BallInImage"))
    (:file "_package_BallInImage" :depends-on ("_package"))
    (:file "BallRelative" :depends-on ("_package_BallRelative"))
    (:file "_package_BallRelative" :depends-on ("_package"))
    (:file "BallsInImage" :depends-on ("_package_BallsInImage"))
    (:file "_package_BallsInImage" :depends-on ("_package"))
    (:file "BarInImage" :depends-on ("_package_BarInImage"))
    (:file "_package_BarInImage" :depends-on ("_package"))
    (:file "GameState" :depends-on ("_package_GameState"))
    (:file "_package_GameState" :depends-on ("_package"))
    (:file "GoalInImage" :depends-on ("_package_GoalInImage"))
    (:file "_package_GoalInImage" :depends-on ("_package"))
    (:file "GoalPartsInImage" :depends-on ("_package_GoalPartsInImage"))
    (:file "_package_GoalPartsInImage" :depends-on ("_package"))
    (:file "GoalRelative" :depends-on ("_package_GoalRelative"))
    (:file "_package_GoalRelative" :depends-on ("_package"))
    (:file "HeadMode" :depends-on ("_package_HeadMode"))
    (:file "_package_HeadMode" :depends-on ("_package"))
    (:file "LineCircleInImage" :depends-on ("_package_LineCircleInImage"))
    (:file "_package_LineCircleInImage" :depends-on ("_package"))
    (:file "LineCircleRelative" :depends-on ("_package_LineCircleRelative"))
    (:file "_package_LineCircleRelative" :depends-on ("_package"))
    (:file "LineInformationInImage" :depends-on ("_package_LineInformationInImage"))
    (:file "_package_LineInformationInImage" :depends-on ("_package"))
    (:file "LineInformationRelative" :depends-on ("_package_LineInformationRelative"))
    (:file "_package_LineInformationRelative" :depends-on ("_package"))
    (:file "LineIntersectionInImage" :depends-on ("_package_LineIntersectionInImage"))
    (:file "_package_LineIntersectionInImage" :depends-on ("_package"))
    (:file "LineIntersectionRelative" :depends-on ("_package_LineIntersectionRelative"))
    (:file "_package_LineIntersectionRelative" :depends-on ("_package"))
    (:file "LineSegmentInImage" :depends-on ("_package_LineSegmentInImage"))
    (:file "_package_LineSegmentInImage" :depends-on ("_package"))
    (:file "LineSegmentRelative" :depends-on ("_package_LineSegmentRelative"))
    (:file "_package_LineSegmentRelative" :depends-on ("_package"))
    (:file "Model" :depends-on ("_package_Model"))
    (:file "_package_Model" :depends-on ("_package"))
    (:file "ObstacleInImage" :depends-on ("_package_ObstacleInImage"))
    (:file "_package_ObstacleInImage" :depends-on ("_package"))
    (:file "ObstacleRelative" :depends-on ("_package_ObstacleRelative"))
    (:file "_package_ObstacleRelative" :depends-on ("_package"))
    (:file "ObstaclesInImage" :depends-on ("_package_ObstaclesInImage"))
    (:file "_package_ObstaclesInImage" :depends-on ("_package"))
    (:file "ObstaclesRelative" :depends-on ("_package_ObstaclesRelative"))
    (:file "_package_ObstaclesRelative" :depends-on ("_package"))
    (:file "Position2D" :depends-on ("_package_Position2D"))
    (:file "_package_Position2D" :depends-on ("_package"))
    (:file "PostInImage" :depends-on ("_package_PostInImage"))
    (:file "_package_PostInImage" :depends-on ("_package"))
    (:file "RobotControlState" :depends-on ("_package_RobotControlState"))
    (:file "_package_RobotControlState" :depends-on ("_package"))
    (:file "Speak" :depends-on ("_package_Speak"))
    (:file "_package_Speak" :depends-on ("_package"))
    (:file "Strategy" :depends-on ("_package_Strategy"))
    (:file "_package_Strategy" :depends-on ("_package"))
    (:file "TeamData" :depends-on ("_package_TeamData"))
    (:file "_package_TeamData" :depends-on ("_package"))
    (:file "VisualCompassRotation" :depends-on ("_package_VisualCompassRotation"))
    (:file "_package_VisualCompassRotation" :depends-on ("_package"))
  ))