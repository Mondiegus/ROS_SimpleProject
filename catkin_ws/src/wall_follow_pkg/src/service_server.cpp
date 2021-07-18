#include "geometry_msgs/Twist.h"
#include "ros/ros.h"
#include "sensor_msgs/LaserScan.h"
#include "geometry_msgs/Point.h"
#include "wall_follow_pkg/FindWall.h"
#include "wall_follow_pkg/service_server.h"

ServiceServer::ServiceServer()
{
    pub = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1000);
    sub = nh.subscribe("scan", 1, &ServiceServer::counterCallback,this);
}

void ServiceServer::counterCallback(const sensor_msgs::LaserScan::ConstPtr &msg) {
    // ROS_INFO("X[0]: %f", msg->ranges[0]);
    // ROS_INFO("X[90]: %f", msg->ranges[90]);
    // ROS_INFO("X[180]: %f", msg->ranges[180]);
    // ROS_INFO("X[270]: %f", msg->ranges[270]);
    // ROS_INFO("min: %f", min);
    static bool once = false;
    static int counter = 0;
    static float sum = 0;
    
    if (!once) {
        if(counter<30)
        {
            for (int i = 0; i <= 359; i+=90) 
            {
                if (msg->ranges[i] < min && msg->ranges[i] < 1000) 
                {
                    min = msg->ranges[i];
                }
            }
            sum += min;
            // ROS_INFO("sum: %f", sum);
        }
        else
        {
            sum /= 30;
            once = true;
            min=sum+0.05;
            // ROS_INFO("min: %f", min);
            // ROS_INFO("count");
            my_service = nh.advertiseService("/goToWall", &ServiceServer::my_callback,this);
        }
        counter++;
    }
    frontScanner = msg->ranges[180];
    rightScanner = msg->ranges[90];
}

bool ServiceServer::my_callback(wall_follow_pkg::FindWall::Request &req, wall_follow_pkg::FindWall::Response &res) {
  static float current_dist = frontScanner;
  static int step = 0;
  static float frontDistance = 0;
  switch (step) {
  case 0:
    if (frontScanner > min) {
      Twist.angular.z = 0.2;
      pub.publish(Twist);
    } else {
      Twist.angular.z = 0.0;
      pub.publish(Twist);
      step = 1;
    break;

    case 1:
      if (frontScanner >= 0.3) {
        Twist.angular.z = 0.0;
        Twist.linear.x = 0.1;
        pub.publish(Twist);
      } else {
        frontDistance = frontScanner;
        Twist.linear.x = 0.0;
        pub.publish(Twist);
        step = 2;
      }
    }
    break;

  case 2:
    if (rightScanner > frontDistance) {
      Twist.angular.z = 0.2;
      pub.publish(Twist);
    } else {
      Twist.angular.z = 0.0;
      pub.publish(Twist);
      res.wallfound = true;
      return true;
    }
    break;

  default:
    break;
  }
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "service_server");
    ServiceServer serverObj;
    ros::spin();

    return 0;
}