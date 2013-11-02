include_directories(${PROJECT_SOURCE_DIR}/include)
add_executable(recipes RecipeFileParser.cpp main.cpp)
add_dependencies(recipes config4cpp)	
target_link_libraries(recipes config4cpp)