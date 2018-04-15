# Install script for directory: C:/MinimalVR-master/Include/LibOVR/assimp/code

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Assimp")
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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/MinimalVR-master/Include/LibOVR/assimp/build/code/Debug/assimp-vc140-mt.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/MinimalVR-master/Include/LibOVR/assimp/build/code/Release/assimp-vc140-mt.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/MinimalVR-master/Include/LibOVR/assimp/build/code/MinSizeRel/assimp-vc140-mt.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/MinimalVR-master/Include/LibOVR/assimp/build/code/RelWithDebInfo/assimp-vc140-mt.lib")
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/MinimalVR-master/Include/LibOVR/assimp/build/code/Debug/assimp-vc140-mt.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/MinimalVR-master/Include/LibOVR/assimp/build/code/Release/assimp-vc140-mt.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/MinimalVR-master/Include/LibOVR/assimp/build/code/MinSizeRel/assimp-vc140-mt.dll")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/MinimalVR-master/Include/LibOVR/assimp/build/code/RelWithDebInfo/assimp-vc140-mt.dll")
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "assimp-dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/assimp" TYPE FILE FILES
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/anim.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/ai_assert.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/camera.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/color4.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/color4.inl"
    "C:/MinimalVR-master/Include/LibOVR/assimp/build/code/../include/assimp/config.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/defs.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/Defines.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/cfileio.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/light.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/material.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/material.inl"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/matrix3x3.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/matrix3x3.inl"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/matrix4x4.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/matrix4x4.inl"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/mesh.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/pbrmaterial.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/postprocess.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/quaternion.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/quaternion.inl"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/scene.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/metadata.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/texture.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/types.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/vector2.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/vector2.inl"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/vector3.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/vector3.inl"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/version.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/cimport.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/importerdesc.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/Importer.hpp"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/DefaultLogger.hpp"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/ProgressHandler.hpp"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/IOStream.hpp"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/IOSystem.hpp"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/Logger.hpp"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/LogStream.hpp"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/NullLogger.hpp"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/cexport.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/Exporter.hpp"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/DefaultIOStream.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/DefaultIOSystem.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/SceneCombiner.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/fast_atof.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/qnan.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/BaseImporter.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/Hash.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/MemoryIOWrapper.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/ParsingUtils.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/StreamReader.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/StreamWriter.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/StringComparison.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/StringUtils.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/SGSpatialSort.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/GenericProperty.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/SpatialSort.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/SkeletonMeshBuilder.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/SmoothingGroups.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/SmoothingGroups.inl"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/StandardShapes.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/RemoveComments.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/Subdivision.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/Vertex.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/LineSplitter.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/TinyFormatter.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/Profiler.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/LogAux.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/Bitmap.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/XMLTools.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/IOStreamBuffer.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/CreateAnimMesh.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/irrXMLWrapper.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/BlobIOSystem.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/MathFunctions.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/Macros.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/Exceptional.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/ByteSwapper.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "assimp-dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/assimp/Compiler" TYPE FILE FILES
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/Compiler/pushpack1.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/Compiler/poppack1.h"
    "C:/MinimalVR-master/Include/LibOVR/assimp/code/../include/assimp/Compiler/pstdint.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "C:/MinimalVR-master/Include/LibOVR/assimp/build/code/Debug/assimp-vc140-mt.pdb")
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "C:/MinimalVR-master/Include/LibOVR/assimp/build/code/RelWithDebInfo/assimp-vc140-mt.pdb")
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
endif()

