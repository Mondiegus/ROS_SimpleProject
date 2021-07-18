#include "wall_follow_pkg/FindWall.h"
#include <actionlib/client/simple_action_client.h>
#include <geometry_msgs/Twist.h>
#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <std_msgs/Int32.h>
#include <std_msgs/Bool.h>
#include <wall_follow_pkg/OdomRecordAction.h>

class WallFollow {
private:
  ros::Subscriber sub;
  ros::ServiceClient goToWall;
  ros::Publisher pub;
  geometry_msgs::Twist adv;
  ros::NodeHandle nh;
  ros::Subscriber stopMoving;

public:
  wall_follow_pkg::FindWall findWall;

  WallFollow() {
    goToWall = nh.serviceClient<wall_follow_pkg::FindWall>("/goToWall");
    pub = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1000);
    stopMoving = nh.subscribe("stop_moving", 10, &WallFollow::stopMov, this);
  };

  virtual ~WallFollow(){};
  void counterCallback(const sensor_msgs::LaserScan::ConstPtr &msg);
  void createSubscriver();
  void goToWallFunction();
  void stopMov(const std_msgs::Bool::ConstPtr &msg);
};