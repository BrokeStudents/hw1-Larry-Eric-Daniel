# Install script for directory: C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/out/install/x64-Debug")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenXLSX/headers" TYPE FILE FILES "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/out/build/x64-Debug/OpenXLSX-Exports.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenXLSX" TYPE FILE FILES "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/OpenXLSX.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/out/build/x64-Debug/OpenXLSXd.lib")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX" TYPE FILE FILES
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/OpenXLSXConfig.cmake"
    "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/out/build/x64-Debug/OpenXLSX/OpenXLSXConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX/OpenXLSXTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX/OpenXLSXTargets.cmake"
         "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/out/build/x64-Debug/CMakeFiles/Export/lib/cmake/OpenXLSX/OpenXLSXTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX/OpenXLSXTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX/OpenXLSXTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX" TYPE FILE FILES "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/out/build/x64-Debug/CMakeFiles/Export/lib/cmake/OpenXLSX/OpenXLSXTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/OpenXLSX" TYPE FILE FILES "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/out/build/x64-Debug/CMakeFiles/Export/lib/cmake/OpenXLSX/OpenXLSXTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/Users/300350409/Desktop/hw1-Larry-Eric-Daniel/OpenXLSX/out/build/x64-Debug/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
