include_directories(${PROJECT_SOURCE_DIR}/include)
add_executable(log-level FooConfiguration.cpp Logger.cpp A.cpp B.cpp main.cpp)
add_dependencies(log-level config4cpp)	
target_link_libraries(log-level config4cpp)