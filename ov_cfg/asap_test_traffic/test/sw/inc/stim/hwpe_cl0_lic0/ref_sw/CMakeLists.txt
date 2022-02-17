cmake_minimum_required(VERSION 2.8)

project(prj_verif_data) 

set(CMAKE_C_COMPILER g++)
set(CMAKE_BUILD_TYPE Release)
set(CMAKE_C_FLAGS "${CMAKE_CXX_FLAGS} -g -O3 -std=c++11")

set(CMAKE_CXX_STANDARD 14)

link_directories(${CMAKE_BINARY_DIR})
include_directories(${CMAKE_APP_UTILS})

set(${CMAKE_APP_ROOT}/src/main.c)

ADD_LIBRARY(LibsModule 
    ${CMAKE_APP_ROOT}/src/gen_stim.c
    ${CMAKE_APP_ROOT}/src/ref_app.cpp
    ${CMAKE_APP_ROOT}/src/gen_Hfile.c
)

target_link_libraries(
    LibsModule -lpthread
    ref_app
)

add_executable(
    ref_app
    ${CMAKE_APP_ROOT}/src/main.c
)

target_link_libraries(
    ref_app
    LibsModule -lpthread
)