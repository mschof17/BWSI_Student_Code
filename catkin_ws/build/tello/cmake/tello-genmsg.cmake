# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tello: 2 messages, 0 services")

set(MSG_I_FLAGS "-Itello:/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tello_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/Flip.msg" NAME_WE)
add_custom_target(_tello_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tello" "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/Flip.msg" ""
)

get_filename_component(_filename "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/State.msg" NAME_WE)
add_custom_target(_tello_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tello" "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/State.msg" "geometry_msgs/Twist:geometry_msgs/Vector3"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tello
  "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/Flip.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tello
)
_generate_msg_cpp(tello
  "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tello
)

### Generating Services

### Generating Module File
_generate_module_cpp(tello
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tello
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tello_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tello_generate_messages tello_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/Flip.msg" NAME_WE)
add_dependencies(tello_generate_messages_cpp _tello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/State.msg" NAME_WE)
add_dependencies(tello_generate_messages_cpp _tello_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tello_gencpp)
add_dependencies(tello_gencpp tello_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tello_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(tello
  "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/Flip.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tello
)
_generate_msg_eus(tello
  "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tello
)

### Generating Services

### Generating Module File
_generate_module_eus(tello
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tello
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tello_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tello_generate_messages tello_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/Flip.msg" NAME_WE)
add_dependencies(tello_generate_messages_eus _tello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/State.msg" NAME_WE)
add_dependencies(tello_generate_messages_eus _tello_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tello_geneus)
add_dependencies(tello_geneus tello_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tello_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tello
  "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/Flip.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tello
)
_generate_msg_lisp(tello
  "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tello
)

### Generating Services

### Generating Module File
_generate_module_lisp(tello
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tello
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tello_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tello_generate_messages tello_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/Flip.msg" NAME_WE)
add_dependencies(tello_generate_messages_lisp _tello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/State.msg" NAME_WE)
add_dependencies(tello_generate_messages_lisp _tello_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tello_genlisp)
add_dependencies(tello_genlisp tello_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tello_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(tello
  "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/Flip.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tello
)
_generate_msg_nodejs(tello
  "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tello
)

### Generating Services

### Generating Module File
_generate_module_nodejs(tello
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tello
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tello_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tello_generate_messages tello_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/Flip.msg" NAME_WE)
add_dependencies(tello_generate_messages_nodejs _tello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/State.msg" NAME_WE)
add_dependencies(tello_generate_messages_nodejs _tello_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tello_gennodejs)
add_dependencies(tello_gennodejs tello_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tello_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tello
  "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/Flip.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tello
)
_generate_msg_py(tello
  "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tello
)

### Generating Services

### Generating Module File
_generate_module_py(tello
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tello
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tello_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tello_generate_messages tello_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/Flip.msg" NAME_WE)
add_dependencies(tello_generate_messages_py _tello_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mschof/BWSI_Student_Code/catkin_ws/src/tello/msg/State.msg" NAME_WE)
add_dependencies(tello_generate_messages_py _tello_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tello_genpy)
add_dependencies(tello_genpy tello_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tello_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tello)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tello
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(tello_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tello)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tello
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(tello_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tello)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tello
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(tello_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tello)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tello
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(tello_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tello)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tello\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tello
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(tello_generate_messages_py geometry_msgs_generate_messages_py)
endif()
