#include "wall_follow_pkg/action_server.h"

void WallFollowAction::subCallback(const nav_msgs::Odometry::ConstPtr &msg) {

  param[0] = msg->pose.pose.position.x;
  param[1] = msg->pose.pose.position.y;
  // 1 is north
  param[2] = msg->pose.pose.orientation.z;
  param[3] = msg->twist.twist.linear.x;
}
void WallFollowAction::executeCB(
    const wall_follow_pkg::OdomRecordGoalConstPtr &goal) {
  // helper variables
  ros::Rate r(1);
  bool success = true;
  bool active = false;
  beginVals vals = {param[0], param[1]};
  //   ROS_INFO("Begin values x:%f, y:%f", vals.x, vals.y);
  // publish info to the console for the user
  ROS_INFO("Executing...");
  while (1) {
    if (param[0] > vals.x + 0.1 || param[0] < vals.x - 0.1)
      break;
  }
  while (!(param[0] < vals.x + 0.1 && param[0] > vals.x - 0.1 &&
           param[1] < vals.y + 0.1 && param[1] > vals.y - 0.1)) {
    // ROS_INFO("Actual values x:%f, y:%f", param[0], param[1]);

    Points.x = param[0];
    Points.y = param[1];
    Points.z = param[2];
    result_.list_of_odoms.push_back(Points);
    // check that preempt has not been requested by the client
    if (as_.isPreemptRequested() || !ros::ok()) {
      ROS_INFO("%s: Preempted", action_name_.c_str());
      // set the action state to preempted
      as_.setPreempted();
      success = false;
      break;
    }
    feedback_.current_total += param[3];
    // publish the feedback
    as_.publishFeedback(feedback_);
    // this sleep is not necessary, the sequence is computed at 1 Hz for
    // demonstration purposes
    r.sleep();
  }

  ROS_INFO("%s: Succeeded", action_name_.c_str());
  std_msgs::Bool ret;
  ret.data = true;
  stopMoving.publish(ret);
  // set the action state to succeeded
  as_.setSucceeded(result_);
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "OdomRecord_server");

  WallFollowAction WallFollowAction("OdomRecord");
  ros::spin();

  return 0;
}