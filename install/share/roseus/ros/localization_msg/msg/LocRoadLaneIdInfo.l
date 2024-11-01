;; Auto-generated. Do not edit!


(when (boundp 'localization_msg::LocRoadLaneIdInfo)
  (if (not (find-package "LOCALIZATION_MSG"))
    (make-package "LOCALIZATION_MSG"))
  (shadow 'LocRoadLaneIdInfo (find-package "LOCALIZATION_MSG")))
(unless (find-package "LOCALIZATION_MSG::LOCROADLANEIDINFO")
  (make-package "LOCALIZATION_MSG::LOCROADLANEIDINFO"))

(in-package "ROS")
;;//! \htmlinclude LocRoadLaneIdInfo.msg.html


(defclass localization_msg::LocRoadLaneIdInfo
  :super ros::object
  :slots (_ur_id _tile_id _road_count _lane_id _reserved ))

(defmethod localization_msg::LocRoadLaneIdInfo
  (:init
   (&key
    ((:ur_id __ur_id) 0)
    ((:tile_id __tile_id) 0)
    ((:road_count __road_count) 0)
    ((:lane_id __lane_id) 0)
    ((:reserved __reserved) 0)
    )
   (send-super :init)
   (setq _ur_id (round __ur_id))
   (setq _tile_id (round __tile_id))
   (setq _road_count (round __road_count))
   (setq _lane_id (round __lane_id))
   (setq _reserved (round __reserved))
   self)
  (:ur_id
   (&optional __ur_id)
   (if __ur_id (setq _ur_id __ur_id)) _ur_id)
  (:tile_id
   (&optional __tile_id)
   (if __tile_id (setq _tile_id __tile_id)) _tile_id)
  (:road_count
   (&optional __road_count)
   (if __road_count (setq _road_count __road_count)) _road_count)
  (:lane_id
   (&optional __lane_id)
   (if __lane_id (setq _lane_id __lane_id)) _lane_id)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; uint16 _ur_id
    2
    ;; uint32 _tile_id
    4
    ;; uint32 _road_count
    4
    ;; uint32 _lane_id
    4
    ;; uint16 _reserved
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _ur_id
       (write-word _ur_id s)
     ;; uint32 _tile_id
       (write-long _tile_id s)
     ;; uint32 _road_count
       (write-long _road_count s)
     ;; uint32 _lane_id
       (write-long _lane_id s)
     ;; uint16 _reserved
       (write-word _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _ur_id
     (setq _ur_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _tile_id
     (setq _tile_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _road_count
     (setq _road_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _lane_id
     (setq _lane_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _reserved
     (setq _reserved (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get localization_msg::LocRoadLaneIdInfo :md5sum-) "6401b02517079499dbfd18d5fa820bef")
(setf (get localization_msg::LocRoadLaneIdInfo :datatype-) "localization_msg/LocRoadLaneIdInfo")
(setf (get localization_msg::LocRoadLaneIdInfo :definition-)
      "uint16 ur_id
uint32 tile_id
uint32 road_count
uint32 lane_id
uint16 reserved
")



(provide :localization_msg/LocRoadLaneIdInfo "6401b02517079499dbfd18d5fa820bef")


