########################################################################
# CMake build script for config4cpp	                                   #
########################################################################


cmake_minimum_required (VERSION 2.8.3) 

# set the name of the project and its root directory
project ("config4cpp") 
# set additional compiler flags - /D_CRT_SECURE_NO_WARNINGS /Zi /nologo as in original Makefile
# FORCE flag is necessary for updating default variable in cmake cache
# final flags results from  CMAKE_CXX_FLAGS & (CMAKE_CXX_FLAGS_DEBUG | CMAKE_CXX_FLAGS_RELEASE)
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /D_CRT_SECURE_NO_WARNINGS /Zi /nologo" CACHE STRING "" FORCE)

# add source directory
add_subdirectory(src)   