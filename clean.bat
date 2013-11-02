echo off
SETLOCAL ENABLEEXTENSIONS

FOR /R %%A IN (*) DO IF %%~nA%%~xA==cmake_install.cmake del /q %%~fA
FOR /R %%A IN (*) DO IF %%~nA%%~xA==CMakeCache.txt del /q %%~fA
FOR /R %%f IN (*) DO IF %%~xf==.cmake del /q %%f
FOR /D /R %%X IN (CMakeFiles*) DO rmdir "%%X" /s /q
IF EXIST bin rmdir bin /s /q
IF EXIST Testing rmdir Testing /s /q
