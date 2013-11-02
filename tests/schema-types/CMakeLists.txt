# include directory
include_directories(${PROJECT_SOURCE_DIR}/include)

# build tests
add_executable(test-schema-types main.cpp)
add_dependencies(test-schema-types config4cpp)	
target_link_libraries(test-schema-types config4cpp)
add_test(test-schema-types test-schema-types -cfg schema-type-tests.cfg)	
