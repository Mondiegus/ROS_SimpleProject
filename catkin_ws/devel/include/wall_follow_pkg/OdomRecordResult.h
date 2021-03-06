// Generated by gencpp from file wall_follow_pkg/OdomRecordResult.msg
// DO NOT EDIT!


#ifndef WALL_FOLLOW_PKG_MESSAGE_ODOMRECORDRESULT_H
#define WALL_FOLLOW_PKG_MESSAGE_ODOMRECORDRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace wall_follow_pkg
{
template <class ContainerAllocator>
struct OdomRecordResult_
{
  typedef OdomRecordResult_<ContainerAllocator> Type;

  OdomRecordResult_()
    : list_of_odoms()  {
    }
  OdomRecordResult_(const ContainerAllocator& _alloc)
    : list_of_odoms(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::geometry_msgs::Point_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Point_<ContainerAllocator> >::other >  _list_of_odoms_type;
  _list_of_odoms_type list_of_odoms;





  typedef boost::shared_ptr< ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator> const> ConstPtr;

}; // struct OdomRecordResult_

typedef ::wall_follow_pkg::OdomRecordResult_<std::allocator<void> > OdomRecordResult;

typedef boost::shared_ptr< ::wall_follow_pkg::OdomRecordResult > OdomRecordResultPtr;
typedef boost::shared_ptr< ::wall_follow_pkg::OdomRecordResult const> OdomRecordResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator1> & lhs, const ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator2> & rhs)
{
  return lhs.list_of_odoms == rhs.list_of_odoms;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator1> & lhs, const ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace wall_follow_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6e8f8379ed0613579e2058b176daca85";
  }

  static const char* value(const ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6e8f8379ed061357ULL;
  static const uint64_t static_value2 = 0x9e2058b176daca85ULL;
};

template<class ContainerAllocator>
struct DataType< ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "wall_follow_pkg/OdomRecordResult";
  }

  static const char* value(const ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"geometry_msgs/Point[] list_of_odoms\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.list_of_odoms);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OdomRecordResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::wall_follow_pkg::OdomRecordResult_<ContainerAllocator>& v)
  {
    s << indent << "list_of_odoms[]" << std::endl;
    for (size_t i = 0; i < v.list_of_odoms.size(); ++i)
    {
      s << indent << "  list_of_odoms[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "    ", v.list_of_odoms[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // WALL_FOLLOW_PKG_MESSAGE_ODOMRECORDRESULT_H
