# Install script for directory: C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/hw1-Larry-Eric-Daniel")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenXLSX/headers" TYPE FILE FILES "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/OpenXLSX/OpenXLSX-Exports.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenXLSX/headers" TYPE FILE FILES
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/IZipArchive.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLCell.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLCellIterator.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLCellRange.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLCellReference.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLCellValue.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLColor.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLColumn.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLCommandQuery.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLConstants.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLContentTypes.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLDateTime.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLDocument.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLException.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLFormula.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLIterator.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLProperties.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLRelationships.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLRow.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLRowData.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLSharedStrings.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLSheet.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLWorkbook.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLXmlData.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLXmlFile.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLXmlParser.hpp"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/headers/XLZipArchive.hpp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenXLSX" TYPE FILE FILES "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/OpenXLSX.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "lib" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/output/Debug/OpenXLSXd.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/output/Release/OpenXLSX.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/output/MinSizeRel/OpenXLSX.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/output/RelWithDebInfo/OpenXLSX.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX" TYPE FILE FILES
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/OpenXLSXConfig.cmake"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/OpenXLSX/OpenXLSX/OpenXLSXConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX/OpenXLSXTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX/OpenXLSXTargets.cmake"
         "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/OpenXLSX/CMakeFiles/Export/c72cc94553a1a0c9b05f75dae42fb1d7/OpenXLSXTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX/OpenXLSXTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX/OpenXLSXTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX" TYPE FILE FILES "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/OpenXLSX/CMakeFiles/Export/c72cc94553a1a0c9b05f75dae42fb1d7/OpenXLSXTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX" TYPE FILE FILES "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/OpenXLSX/CMakeFiles/Export/c72cc94553a1a0c9b05f75dae42fb1d7/OpenXLSXTargets-debug.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX" TYPE FILE FILES "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/OpenXLSX/CMakeFiles/Export/c72cc94553a1a0c9b05f75dae42fb1d7/OpenXLSXTargets-minsizerel.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX" TYPE FILE FILES "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/OpenXLSX/CMakeFiles/Export/c72cc94553a1a0c9b05f75dae42fb1d7/OpenXLSXTargets-relwithdebinfo.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX" TYPE FILE FILES "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/OpenXLSX/CMakeFiles/Export/c72cc94553a1a0c9b05f75dae42fb1d7/OpenXLSXTargets-release.cmake")
  endif()
endif()

