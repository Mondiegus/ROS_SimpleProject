# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "wall_follow_pkg: 7 messages, 1 services")

set(MSG_I_FLAGS "-Iwall_follow_pkg:/home/user/catkin_ws/devel/share/wall_follow_pkg/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(wall_follow_pkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordAction.msg" NAME_WE)
add_custom_target(_wall_follow_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wall_follow_pkg" "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordAction.msg" "wall_follow_pkg/OdomRecordActionGoal:wall_follow_pkg/OdomRecordActionResult:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header:wall_follow_pkg/OdomRecordFeedback:geometry_msgs/Point:wall_follow_pkg/OdomRecordResult:wall_follow_pkg/OdomRecordActionFeedback:wall_follow_pkg/OdomRecordGoal"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionGoal.msg" NAME_WE)
add_custom_target(_wall_follow_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wall_follow_pkg" "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionGoal.msg" "std_msgs/Header:actionlib_msgs/GoalID:wall_follow_pkg/OdomRecordGoal"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionResult.msg" NAME_WE)
add_custom_target(_wall_follow_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wall_follow_pkg" "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionResult.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header:geometry_msgs/Point:wall_follow_pkg/OdomRecordResult"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionFeedback.msg" NAME_WE)
add_custom_target(_wall_follow_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wall_follow_pkg" "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionFeedback.msg" "actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID:wall_follow_pkg/OdomRecordFeedback"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordGoal.msg" NAME_WE)
add_custom_target(_wall_follow_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wall_follow_pkg" "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordGoal.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordResult.msg" NAME_WE)
add_custom_target(_wall_follow_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wall_follow_pkg" "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordResult.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordFeedback.msg" NAME_WE)
add_custom_target(_wall_follow_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wall_follow_pkg" "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordFeedback.msg" ""
)

get_filename_component(_filename "/home/user/catkin_ws/src/wall_follow_pkg/srv/FindWall.srv" NAME_WE)
add_custom_target(_wall_follow_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "wall_follow_pkg" "/home/user/catkin_ws/src/wall_follow_pkg/srv/FindWall.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionGoal.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordResult.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionFeedback.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_cpp(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_cpp(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_cpp(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_cpp(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_cpp(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_cpp(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wall_follow_pkg
)

### Generating Services
_generate_srv_cpp(wall_follow_pkg
  "/home/user/catkin_ws/src/wall_follow_pkg/srv/FindWall.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wall_follow_pkg
)

### Generating Module File
_generate_module_cpp(wall_follow_pkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wall_follow_pkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(wall_follow_pkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(wall_follow_pkg_generate_messages wall_follow_pkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordAction.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_cpp _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionGoal.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_cpp _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionResult.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_cpp _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionFeedback.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_cpp _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordGoal.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_cpp _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordResult.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_cpp _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordFeedback.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_cpp _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/wall_follow_pkg/srv/FindWall.srv" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_cpp _wall_follow_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wall_follow_pkg_gencpp)
add_dependencies(wall_follow_pkg_gencpp wall_follow_pkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wall_follow_pkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionGoal.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordResult.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionFeedback.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_eus(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_eus(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_eus(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_eus(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_eus(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_eus(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wall_follow_pkg
)

### Generating Services
_generate_srv_eus(wall_follow_pkg
  "/home/user/catkin_ws/src/wall_follow_pkg/srv/FindWall.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wall_follow_pkg
)

### Generating Module File
_generate_module_eus(wall_follow_pkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wall_follow_pkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(wall_follow_pkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(wall_follow_pkg_generate_messages wall_follow_pkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordAction.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_eus _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionGoal.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_eus _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionResult.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_eus _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionFeedback.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_eus _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordGoal.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_eus _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordResult.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_eus _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordFeedback.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_eus _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/wall_follow_pkg/srv/FindWall.srv" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_eus _wall_follow_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wall_follow_pkg_geneus)
add_dependencies(wall_follow_pkg_geneus wall_follow_pkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wall_follow_pkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionGoal.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordResult.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionFeedback.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_lisp(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_lisp(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_lisp(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_lisp(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_lisp(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_lisp(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wall_follow_pkg
)

### Generating Services
_generate_srv_lisp(wall_follow_pkg
  "/home/user/catkin_ws/src/wall_follow_pkg/srv/FindWall.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wall_follow_pkg
)

### Generating Module File
_generate_module_lisp(wall_follow_pkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wall_follow_pkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(wall_follow_pkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(wall_follow_pkg_generate_messages wall_follow_pkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordAction.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_lisp _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionGoal.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_lisp _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionResult.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_lisp _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionFeedback.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_lisp _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordGoal.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_lisp _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordResult.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_lisp _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordFeedback.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_lisp _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/wall_follow_pkg/srv/FindWall.srv" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_lisp _wall_follow_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wall_follow_pkg_genlisp)
add_dependencies(wall_follow_pkg_genlisp wall_follow_pkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wall_follow_pkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionGoal.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordResult.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionFeedback.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_nodejs(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_nodejs(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_nodejs(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_nodejs(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_nodejs(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_nodejs(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wall_follow_pkg
)

### Generating Services
_generate_srv_nodejs(wall_follow_pkg
  "/home/user/catkin_ws/src/wall_follow_pkg/srv/FindWall.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wall_follow_pkg
)

### Generating Module File
_generate_module_nodejs(wall_follow_pkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wall_follow_pkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(wall_follow_pkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(wall_follow_pkg_generate_messages wall_follow_pkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordAction.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_nodejs _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionGoal.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_nodejs _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionResult.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_nodejs _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionFeedback.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_nodejs _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordGoal.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_nodejs _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordResult.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_nodejs _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordFeedback.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_nodejs _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/wall_follow_pkg/srv/FindWall.srv" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_nodejs _wall_follow_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wall_follow_pkg_gennodejs)
add_dependencies(wall_follow_pkg_gennodejs wall_follow_pkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wall_follow_pkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordAction.msg"
  "${MSG_I_FLAGS}"
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionGoal.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordResult.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionFeedback.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_py(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_py(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_py(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_py(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_py(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wall_follow_pkg
)
_generate_msg_py(wall_follow_pkg
  "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wall_follow_pkg
)

### Generating Services
_generate_srv_py(wall_follow_pkg
  "/home/user/catkin_ws/src/wall_follow_pkg/srv/FindWall.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wall_follow_pkg
)

### Generating Module File
_generate_module_py(wall_follow_pkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wall_follow_pkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(wall_follow_pkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(wall_follow_pkg_generate_messages wall_follow_pkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordAction.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_py _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionGoal.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_py _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionResult.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_py _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordActionFeedback.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_py _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordGoal.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_py _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordResult.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_py _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/devel/share/wall_follow_pkg/msg/OdomRecordFeedback.msg" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_py _wall_follow_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/user/catkin_ws/src/wall_follow_pkg/srv/FindWall.srv" NAME_WE)
add_dependencies(wall_follow_pkg_generate_messages_py _wall_follow_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(wall_follow_pkg_genpy)
add_dependencies(wall_follow_pkg_genpy wall_follow_pkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wall_follow_pkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wall_follow_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wall_follow_pkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(wall_follow_pkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(wall_follow_pkg_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(wall_follow_pkg_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wall_follow_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/wall_follow_pkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(wall_follow_pkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(wall_follow_pkg_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(wall_follow_pkg_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wall_follow_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wall_follow_pkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(wall_follow_pkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(wall_follow_pkg_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(wall_follow_pkg_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wall_follow_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/wall_follow_pkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(wall_follow_pkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(wall_follow_pkg_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(wall_follow_pkg_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wall_follow_pkg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wall_follow_pkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wall_follow_pkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(wall_follow_pkg_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(wall_follow_pkg_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(wall_follow_pkg_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
