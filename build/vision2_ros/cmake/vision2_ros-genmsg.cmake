# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vision2_ros: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ivision2_ros:/home/george/ros_vision/src/vision2_ros/msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vision2_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/george/ros_vision/src/vision2_ros/msg/detection.msg" NAME_WE)
add_custom_target(_vision2_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vision2_ros" "/home/george/ros_vision/src/vision2_ros/msg/detection.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/george/ros_vision/src/vision2_ros/msg/HSV.msg" NAME_WE)
add_custom_target(_vision2_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vision2_ros" "/home/george/ros_vision/src/vision2_ros/msg/HSV.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vision2_ros
  "/home/george/ros_vision/src/vision2_ros/msg/detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vision2_ros
)
_generate_msg_cpp(vision2_ros
  "/home/george/ros_vision/src/vision2_ros/msg/HSV.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vision2_ros
)

### Generating Services

### Generating Module File
_generate_module_cpp(vision2_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vision2_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vision2_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vision2_ros_generate_messages vision2_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/george/ros_vision/src/vision2_ros/msg/detection.msg" NAME_WE)
add_dependencies(vision2_ros_generate_messages_cpp _vision2_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/george/ros_vision/src/vision2_ros/msg/HSV.msg" NAME_WE)
add_dependencies(vision2_ros_generate_messages_cpp _vision2_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vision2_ros_gencpp)
add_dependencies(vision2_ros_gencpp vision2_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vision2_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(vision2_ros
  "/home/george/ros_vision/src/vision2_ros/msg/detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vision2_ros
)
_generate_msg_eus(vision2_ros
  "/home/george/ros_vision/src/vision2_ros/msg/HSV.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vision2_ros
)

### Generating Services

### Generating Module File
_generate_module_eus(vision2_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vision2_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(vision2_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(vision2_ros_generate_messages vision2_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/george/ros_vision/src/vision2_ros/msg/detection.msg" NAME_WE)
add_dependencies(vision2_ros_generate_messages_eus _vision2_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/george/ros_vision/src/vision2_ros/msg/HSV.msg" NAME_WE)
add_dependencies(vision2_ros_generate_messages_eus _vision2_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vision2_ros_geneus)
add_dependencies(vision2_ros_geneus vision2_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vision2_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vision2_ros
  "/home/george/ros_vision/src/vision2_ros/msg/detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vision2_ros
)
_generate_msg_lisp(vision2_ros
  "/home/george/ros_vision/src/vision2_ros/msg/HSV.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vision2_ros
)

### Generating Services

### Generating Module File
_generate_module_lisp(vision2_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vision2_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vision2_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vision2_ros_generate_messages vision2_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/george/ros_vision/src/vision2_ros/msg/detection.msg" NAME_WE)
add_dependencies(vision2_ros_generate_messages_lisp _vision2_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/george/ros_vision/src/vision2_ros/msg/HSV.msg" NAME_WE)
add_dependencies(vision2_ros_generate_messages_lisp _vision2_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vision2_ros_genlisp)
add_dependencies(vision2_ros_genlisp vision2_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vision2_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(vision2_ros
  "/home/george/ros_vision/src/vision2_ros/msg/detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vision2_ros
)
_generate_msg_nodejs(vision2_ros
  "/home/george/ros_vision/src/vision2_ros/msg/HSV.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vision2_ros
)

### Generating Services

### Generating Module File
_generate_module_nodejs(vision2_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vision2_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(vision2_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(vision2_ros_generate_messages vision2_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/george/ros_vision/src/vision2_ros/msg/detection.msg" NAME_WE)
add_dependencies(vision2_ros_generate_messages_nodejs _vision2_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/george/ros_vision/src/vision2_ros/msg/HSV.msg" NAME_WE)
add_dependencies(vision2_ros_generate_messages_nodejs _vision2_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vision2_ros_gennodejs)
add_dependencies(vision2_ros_gennodejs vision2_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vision2_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vision2_ros
  "/home/george/ros_vision/src/vision2_ros/msg/detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision2_ros
)
_generate_msg_py(vision2_ros
  "/home/george/ros_vision/src/vision2_ros/msg/HSV.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision2_ros
)

### Generating Services

### Generating Module File
_generate_module_py(vision2_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision2_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vision2_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vision2_ros_generate_messages vision2_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/george/ros_vision/src/vision2_ros/msg/detection.msg" NAME_WE)
add_dependencies(vision2_ros_generate_messages_py _vision2_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/george/ros_vision/src/vision2_ros/msg/HSV.msg" NAME_WE)
add_dependencies(vision2_ros_generate_messages_py _vision2_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vision2_ros_genpy)
add_dependencies(vision2_ros_genpy vision2_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vision2_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vision2_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vision2_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(vision2_ros_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(vision2_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vision2_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vision2_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(vision2_ros_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(vision2_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vision2_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vision2_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(vision2_ros_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(vision2_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vision2_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vision2_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(vision2_ros_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(vision2_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision2_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision2_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision2_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(vision2_ros_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(vision2_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
