include_directories(${PROJECT_SOURCE_DIR}/include)
add_executable(extended-schema-validator main.cpp SchemaTypeHex.cpp FooConfiguration.cpp)
add_dependencies(extended-schema-validator config4cpp)	
target_link_libraries(extended-schema-validator config4cpp)