include_directories(${PROJECT_SOURCE_DIR}/include)
add_executable(simple-encapsulation FooConfiguration.cpp main.cpp)
add_dependencies(simple-encapsulation config4cpp)	
target_link_libraries(simple-encapsulation config4cpp)