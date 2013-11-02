echo off
call clean.bat
cmake -G "NMake Makefiles"
nmake
ctest --verbose