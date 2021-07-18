class ServiceServer
{
    private:
        float frontScanner = 0;
        float rightScanner = 0;
        float min = 999;
        ros::NodeHandle nh;
        ros::Publisher pub;
        geometry_msgs::Twist Twist;
        ros::Subscriber sub;
        ros::ServiceServer my_service;

    public:
        ServiceServer();
        virtual ~ServiceServer() {};
        void counterCallback(const sensor_msgs::LaserScan::ConstPtr &msg);
        bool my_callback(wall_follow_pkg::FindWall::Request &req, wall_follow_pkg::FindWall::Response &res) ;
};