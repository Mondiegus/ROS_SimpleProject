// Generated by gencpp from file wall_follow_pkg/OdomRecordGoal.msg
// DO NOT EDIT!


#ifndef WALL_FOLLOW_PKG_MESSAGE_ODOMRECORDGOAL_H
#define WALL_FOLLOW_PKG_MESSAGE_ODOMRECORDGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace wall_follow_pkg
{
template <class ContainerAllocator>
struct OdomRecordGoal_
{
  typedef OdomRecordGoal_<ContainerAllocator> Type;

  OdomRecordGoal_()
    {
    }
  OdomRecordGoal_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::wall_follow_pkg::OdomRecordGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wall_follow_pkg::OdomRecordGoal_<ContainerAllocator> const> ConstPtr;

}; // struct OdomRecordGoal_

typedef ::wall_follow_pkg::OdomRecordGoal_<std::allocator<void> > OdomRecordGoal;

typedef boost::shared_ptr< ::wall_follow_pkg::OdomRecordGoal > OdomRecordGoalPtr;
typedef boost::shared_ptr< ::wall_follow_pkg::OdomRecordGoal const> OdomRecordGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wall_follow_pkg::OdomRecordGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wall_follow_pkg::OdomRecordGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace wall_follow_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::wall_follow_pkg::OdomRecordGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wall_follow_pkg::OdomRecordGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wall_follow_pkg::OdomRecordGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wall_follow_pkg::OdomRecordGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wall_follow_pkg::OdomRecordGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wall_follow_pkg::OdomRecordGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wall_follow_pkg::OdomRecordGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::wall_follow_pkg::OdomRecordGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::wall_follow_pkg::OdomRecordGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wall_follow_pkg/OdomRecordGoal";
  }

  static const char* value(const ::wall_follow_pkg::OdomRecordGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wall_follow_pkg::OdomRecordGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
;
  }

  static const char* value(const ::wall_follow_pkg::OdomRecordGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wall_follow_pkg::OdomRecordGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OdomRecordGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wall_follow_pkg::OdomRecordGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::wall_follow_pkg::OdomRecordGoal_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // WALL_FOLLOW_PKG_MESSAGE_ODOMRECORDGOAL_H