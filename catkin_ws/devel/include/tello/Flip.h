// Generated by gencpp from file tello/Flip.msg
// DO NOT EDIT!


#ifndef TELLO_MESSAGE_FLIP_H
#define TELLO_MESSAGE_FLIP_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tello
{
template <class ContainerAllocator>
struct Flip_
{
  typedef Flip_<ContainerAllocator> Type;

  Flip_()
    : flip_command(0)  {
    }
  Flip_(const ContainerAllocator& _alloc)
    : flip_command(0)  {
  (void)_alloc;
    }



   typedef uint8_t _flip_command_type;
  _flip_command_type flip_command;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(flip_forward)
  #undef flip_forward
#endif
#if defined(_WIN32) && defined(flip_left)
  #undef flip_left
#endif
#if defined(_WIN32) && defined(flip_back)
  #undef flip_back
#endif
#if defined(_WIN32) && defined(flip_right)
  #undef flip_right
#endif

  enum {
    flip_forward = 0u,
    flip_left = 1u,
    flip_back = 2u,
    flip_right = 3u,
  };


  typedef boost::shared_ptr< ::tello::Flip_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tello::Flip_<ContainerAllocator> const> ConstPtr;

}; // struct Flip_

typedef ::tello::Flip_<std::allocator<void> > Flip;

typedef boost::shared_ptr< ::tello::Flip > FlipPtr;
typedef boost::shared_ptr< ::tello::Flip const> FlipConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tello::Flip_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tello::Flip_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::tello::Flip_<ContainerAllocator1> & lhs, const ::tello::Flip_<ContainerAllocator2> & rhs)
{
  return lhs.flip_command == rhs.flip_command;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::tello::Flip_<ContainerAllocator1> & lhs, const ::tello::Flip_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace tello

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::tello::Flip_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tello::Flip_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tello::Flip_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tello::Flip_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tello::Flip_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tello::Flip_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tello::Flip_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c0ea7d798764a957a0739f2eac92306d";
  }

  static const char* value(const ::tello::Flip_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc0ea7d798764a957ULL;
  static const uint64_t static_value2 = 0xa0739f2eac92306dULL;
};

template<class ContainerAllocator>
struct DataType< ::tello::Flip_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tello/Flip";
  }

  static const char* value(const ::tello::Flip_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tello::Flip_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Reference: https://github.com/clydemcqueen/flock/blob/master/flock_msgs/msg/Flip.msg\n"
"uint8 flip_forward=0\n"
"uint8 flip_left=1\n"
"uint8 flip_back=2\n"
"uint8 flip_right=3\n"
"uint8 flip_command\n"
;
  }

  static const char* value(const ::tello::Flip_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tello::Flip_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.flip_command);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Flip_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tello::Flip_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tello::Flip_<ContainerAllocator>& v)
  {
    s << indent << "flip_command: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.flip_command);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TELLO_MESSAGE_FLIP_H
