#include "geometry_msgs/Point.h"
#include <actionlib/server/simple_action_server.h>
#include <nav_msgs/Odometry.h>
#include <ros/ros.h>
#include <std_msgs/Bool.h>
#include <std_msgs/Empty.h>
#include <wall_follow_pkg/OdomRecordAction.h>

typedef struct beginVals {
  float x;
  float y;
} beginVals;

class WallFollowAction {
protected:
  ros::NodeHandle nh_;
  actionlib::SimpleActionServer<wall_follow_pkg::OdomRecordAction> as_;
  std::string action_name_;
  ros::Subscriber sub;
  wall_follow_pkg::OdomRecordFeedback feedback_;
  wall_follow_pkg::OdomRecordResult result_;
  geometry_msgs::Point Points;
  float param[4];
  float distance;
  ros::Publisher stopMoving;

public:
  void subCallback(const nav_msgs::Odometry::ConstPtr &msg);

  WallFollowAction(std::string name)
      : as_(nh_, name, boost::bind(&WallFollowAction::executeCB, this, _1),
            false),
        action_name_(name) {
    sub = nh_.subscribe("odom", 1000, &WallFollowAction::subCallback, this);
    stopMoving = nh_.advertise<std_msgs::Bool>("stop_moving", 10);

    as_.start();
  }
  virtual ~WallFollowAction(void) {}

  void executeCB(const wall_follow_pkg::OdomRecordGoalConstPtr &goal);
};
