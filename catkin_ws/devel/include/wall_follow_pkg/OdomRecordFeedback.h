// Generated by gencpp from file wall_follow_pkg/OdomRecordFeedback.msg
// DO NOT EDIT!


#ifndef WALL_FOLLOW_PKG_MESSAGE_ODOMRECORDFEEDBACK_H
#define WALL_FOLLOW_PKG_MESSAGE_ODOMRECORDFEEDBACK_H


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
struct OdomRecordFeedback_
{
  typedef OdomRecordFeedback_<ContainerAllocator> Type;

  OdomRecordFeedback_()
    : current_total(0.0)  {
    }
  OdomRecordFeedback_(const ContainerAllocator& _alloc)
    : current_total(0.0)  {
  (void)_alloc;
    }



   typedef float _current_total_type;
  _current_total_type current_total;





  typedef boost::shared_ptr< ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct OdomRecordFeedback_

typedef ::wall_follow_pkg::OdomRecordFeedback_<std::allocator<void> > OdomRecordFeedback;

typedef boost::shared_ptr< ::wall_follow_pkg::OdomRecordFeedback > OdomRecordFeedbackPtr;
typedef boost::shared_ptr< ::wall_follow_pkg::OdomRecordFeedback const> OdomRecordFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator1> & lhs, const ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.current_total == rhs.current_total;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator1> & lhs, const ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace wall_follow_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "30966342c24c9732e6e891bbe67686ec";
  }

  static const char* value(const ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x30966342c24c9732ULL;
  static const uint64_t static_value2 = 0xe6e891bbe67686ecULL;
};

template<class ContainerAllocator>
struct DataType< ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wall_follow_pkg/OdomRecordFeedback";
  }

  static const char* value(const ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"float32 current_total\n"
;
  }

  static const char* value(const ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.current_total);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OdomRecordFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wall_follow_pkg::OdomRecordFeedback_<ContainerAllocator>& v)
  {
    s << indent << "current_total: ";
    Printer<float>::stream(s, indent + "  ", v.current_total);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WALL_FOLLOW_PKG_MESSAGE_ODOMRECORDFEEDBACK_H
