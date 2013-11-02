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