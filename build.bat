echo off
call clean.bat
mkdir bin
cd bin
cmake -DCMAKE_BUILD_TYPE=Release -G "NMake Makefiles" ..\
nmake
ctest --verbose
cd ..