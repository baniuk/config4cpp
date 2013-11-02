# include directory
include_directories(${PROJECT_SOURCE_DIR}/include)
# building target config4cpp
add_library(config4cpp STATIC 
	SchemaLex.cpp
	SchemaParser.cpp
	MBChar.cpp
	SchemaValidator.cpp
	platform.cpp
	util.cpp
	Configuration.cpp
	DefaultSecurity.cpp
	DefaultSecurityConfiguration.cpp
	ConfigurationException.cpp
	ConfigurationImpl.cpp
	ConfigParser.cpp
	UidIdentifierProcessor.cpp
	ConfigScope.cpp
	ConfigScopeEntry.cpp
	ConfigItem.cpp 
	LexToken.cpp
	LexBase.cpp
	ConfigLex.cpp
	StringBuffer.cpp
	StringVector.cpp
	SchemaType.cpp
	SchemaTypeBoolean.cpp
	SchemaTypeDurationMicroseconds.cpp
	SchemaTypeDurationMilliseconds.cpp
	SchemaTypeDurationSeconds.cpp 
	SchemaTypeEnum.cpp
	SchemaTypeFloat.cpp
	SchemaTypeFloatWithUnits.cpp
	SchemaTypeInt.cpp 	
	SchemaTypeIntWithUnits.cpp
	SchemaTypeMemorySizeBytes.cpp
	SchemaTypeMemorySizeKB.cpp
	SchemaTypeMemorySizeMB.cpp 
	SchemaTypeScope.cpp 
	SchemaTypeString.cpp 	
	SchemaTypeUnitsWithFloat.cpp
	SchemaTypeUnitsWithInt.cpp 
	SchemaTypeList.cpp 
	SchemaTypeTable.cpp 
	SchemaTypeTuple.cpp 
	SchemaTypeTypedef.cpp)

# final lib will be in lib directory 
set_target_properties(config4cpp
	PROPERTIES
	ARCHIVE_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/lib")

# build config2cpp.exe
add_executable(config2cpp config2cpp-main.cpp Config2Cpp.cpp)
add_dependencies(config2cpp config4cpp)	
target_link_libraries(config2cpp config4cpp)
set_target_properties(config2cpp
	PROPERTIES
	RUNTIME_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/bin")
	
# build config4cpp.exe
add_executable(config4cpp.exe Config4Cpp.cpp)
add_dependencies(config4cpp.exe config4cpp)	
target_link_libraries(config4cpp.exe config4cpp)
set_target_properties(config4cpp.exe
	PROPERTIES
	RUNTIME_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/bin")
	
# build config2cpp-nocheck.exe.exe
add_executable(config2cpp-nocheck config2cpp-nocheck-main.cpp Config2Cpp.cpp)
add_dependencies(config2cpp-nocheck config4cpp)	
target_link_libraries(config2cpp-nocheck config4cpp)
set_target_properties(config2cpp-nocheck
	PROPERTIES
	RUNTIME_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/bin")