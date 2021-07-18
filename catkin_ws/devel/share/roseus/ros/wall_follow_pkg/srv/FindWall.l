;; Auto-generated. Do not edit!


(when (boundp 'wall_follow_pkg::FindWall)
  (if (not (find-package "WALL_FOLLOW_PKG"))
    (make-package "WALL_FOLLOW_PKG"))
  (shadow 'FindWall (find-package "WALL_FOLLOW_PKG")))
(unless (find-package "WALL_FOLLOW_PKG::FINDWALL")
  (make-package "WALL_FOLLOW_PKG::FINDWALL"))
(unless (find-package "WALL_FOLLOW_PKG::FINDWALLREQUEST")
  (make-package "WALL_FOLLOW_PKG::FINDWALLREQUEST"))
(unless (find-package "WALL_FOLLOW_PKG::FINDWALLRESPONSE")
  (make-package "WALL_FOLLOW_PKG::FINDWALLRESPONSE"))

(in-package "ROS")





(defclass wall_follow_pkg::FindWallRequest
  :super ros::object
  :slots ())

(defmethod wall_follow_pkg::FindWallRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass wall_follow_pkg::FindWallResponse
  :super ros::object
  :slots (_wallfound ))

(defmethod wall_follow_pkg::FindWallResponse
  (:init
   (&key
    ((:wallfound __wallfound) nil)
    )
   (send-super :init)
   (setq _wallfound __wallfound)
   self)
  (:wallfound
   (&optional (__wallfound :null))
   (if (not (eq __wallfound :null)) (setq _wallfound __wallfound)) _wallfound)
  (:serialization-length
   ()
   (+
    ;; bool _wallfound
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _wallfound
       (if _wallfound (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _wallfound
     (setq _wallfound (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass wall_follow_pkg::FindWall
  :super ros::object
  :slots ())

(setf (get wall_follow_pkg::FindWall :md5sum-) "66229cd821efb4126c80f35757f3c73e")
(setf (get wall_follow_pkg::FindWall :datatype-) "wall_follow_pkg/FindWall")
(setf (get wall_follow_pkg::FindWall :request) wall_follow_pkg::FindWallRequest)
(setf (get wall_follow_pkg::FindWall :response) wall_follow_pkg::FindWallResponse)

(defmethod wall_follow_pkg::FindWallRequest
  (:response () (instance wall_follow_pkg::FindWallResponse :init)))

(setf (get wall_follow_pkg::FindWallRequest :md5sum-) "66229cd821efb4126c80f35757f3c73e")
(setf (get wall_follow_pkg::FindWallRequest :datatype-) "wall_follow_pkg/FindWallRequest")
(setf (get wall_follow_pkg::FindWallRequest :definition-)
      "
---
bool wallfound
")

(setf (get wall_follow_pkg::FindWallResponse :md5sum-) "66229cd821efb4126c80f35757f3c73e")
(setf (get wall_follow_pkg::FindWallResponse :datatype-) "wall_follow_pkg/FindWallResponse")
(setf (get wall_follow_pkg::FindWallResponse :definition-)
      "
---
bool wallfound
")



(provide :wall_follow_pkg/FindWall "66229cd821efb4126c80f35757f3c73e")


