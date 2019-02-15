# Install script for directory: /home/jason/Project/PX4/Firmware

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/jason/Project/PX4/Firmware/src/lib/DriverFramework/framework/cmake_install.cmake")
  include("/home/jason/Project/PX4/Firmware/src/drivers/camera_trigger/cmake_install.cmake")
  include("/home/jason/Project/PX4/Firmware/src/modules/sensors/cmake_install.cmake")
  include("/home/jason/Project/PX4/Firmware/src/systemcmds/param/cmake_install.cmake")
  include("/home/jason/Project/PX4/Firmware/src/systemcmds/reboot/cmake_install.cmake")
  include("/home/jason/Project/PX4/Firmware/src/systemcmds/shutdown/cmake_install.cmake")
  include("/home/jason/Project/PX4/Firmware/src/systemcmds/top/cmake_install.cmake")
  include("/home/jason/Project/PX4/Firmware/src/systemcmds/topic_listener/cmake_install.cmake")
  include("/home/jason/Project/PX4/Firmware/src/modules/camera_feedback/cmake_install.cmake")
  include("/home/jason/Project/PX4/Firmware/src/modules/commander/cmake_install.cmake")
  include("/home/jason/Project/PX4/Firmware/src/modules/mavlink/cmake_install.cmake")
  include("/home/jason/Project/PX4/Firmware/src/modules/logger/cmake_install.cmake")
  include("/home/jason/Project/PX4/Firmware/src/modules/dataman/cmake_install.cmake")
  include("/home/jason/Project/PX4/Firmware/platforms/posix/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/jason/Project/PX4/Firmware/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
