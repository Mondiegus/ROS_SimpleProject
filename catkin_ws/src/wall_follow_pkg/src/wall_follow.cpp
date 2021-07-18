#include "wall_follow_pkg/wall_follow.h"

// 0 to tył
// 180 to przód
void WallFollow::counterCallback(const sensor_msgs::LaserScan::ConstPtr &msg) {
  //   ROS_INFO("X[90]: %f", msg->ranges[90]);
  //   ROS_INFO("X[180]: %f", msg->ranges[180]);
  //   ROS_INFO("X[195]: %f", msg->ranges[195]);
  //   ROS_INFO("X[165]: %f", msg->ranges[165]);
  bool noObject = true;
  for (int i = 155; i < 204; i++) {
    if (msg->ranges[i] < 0.6) {
      //   ROS_INFO("Object Detected");
      noObject = false;
      break;
    }
  }
  if (noObject) {
    if (msg->ranges[89] > 0.3) {
      adv.linear.x = 0.1;
      adv.angular.z = -0.39;
      pub.publish(adv);
    } else if (msg->ranges[89] < 0.2) {
      adv.linear.x = 0.1;
      adv.angular.z = 0.2;
      pub.publish(adv);
    } else {
      adv.linear.x = 0.1;
      adv.angular.z = 0.0;
      pub.publish(adv);
    }
  } else {
    adv.linear.x = 0.1;
    adv.angular.z = 0.3;
    pub.publish(adv);
  }
}

void WallFollow::stopMov(const std_msgs::Bool::ConstPtr &msg) {
  if (msg->data) {
    adv.linear.x = 0.0;
    adv.angular.z = 0.0;
    pub.publish(adv);
    ros::Duration(0.5).sleep();
    sub.shutdown();
  }
}

void WallFollow::createSubscriver() {
  sub = nh.subscribe("scan", 1000, &WallFollow::counterCallback, this);
}

void WallFollow::goToWallFunction() {
  while (!goToWall.call(findWall)) {
    goToWall.call(findWall);
  }
}

void doneCb(const actionlib::SimpleClientGoalState &state,
            const wall_follow_pkg::OdomRecordResultConstPtr &result) {
  ROS_INFO("[State Result]: %s", state.toString().c_str());
  ROS_INFO("The Action has been completed");
}

// Called once when the goal becomes active
void activeCb() { ROS_INFO("Goal just went active"); }

void feedbackCb(const wall_follow_pkg::OdomRecordFeedbackConstPtr &feedback) {
  ROS_INFO("[Feedback] Distance traveled: %f", feedback->current_total);
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "topic_subscriber");
  ROS_INFO("Create WallFollow object");
  WallFollow wallFollow;
  ROS_INFO("Create OdomRecordGoal");
  wall_follow_pkg::OdomRecordGoal empty;
  ROS_INFO("Create OdomRecord client");
  actionlib::SimpleActionClient<wall_follow_pkg::OdomRecordAction> client(
      "OdomRecord", true);
  ROS_INFO("Go to wall function");
  wallFollow.goToWallFunction();
  ROS_INFO("Wait for server");
  client.waitForServer();
  ROS_INFO("Send Goal");
  client.sendGoal(empty, &doneCb, &activeCb, &feedbackCb);
  ROS_INFO("Create subscriber");
  wallFollow.createSubscriver();
  ROS_INFO("Driving... ");
  ros::spin();

  return 0;
}