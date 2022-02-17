cmake_minimum_required(VERSION 2.8)

project(ref_app) 

set(CMAKE_C_COMPILER gcc)
set(CMAKE_BUILD_TYPE Release)
set(CMAKE_C_FLAGS "${CMAKE_CXX_FLAGS} -g -O3 -std=c99")

link_directories(${CMAKE_BINARY_DIR})
include_directories(${CMAKE_APP_ROOT}/include)
include_directories(${CMAKE_APP_UTILS})

ADD_LIBRARY(LibsModule 
    ${CMAKE_APP_ROOT}/src/gen_stim.c
    ${CMAKE_APP_ROOT}/src/ref_app.c
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


# target_link_libraries(LibsModule -lpthread)
# target_link_libraries(LibsModule liblapack.a)
# target_link_libraries(LibsModule -L/home/user/libs/somelibpath/)
# ADD_EXECUTABLE(MyProgramExecBlaBla main.cpp)
# target_link_libraries(MyProgramExecBlaBla LibsModule)