
mkdir build
cd build

:: TODO for Windows

cmake -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
    -G "NMake Makefiles" ^
    -DCMAKE_BUILD_TYPE=Release ^
    ..
if errorlevel 1 exit /B 1

nmake
if errorlevel 1 exit /B 1
:: No make check
nmake install
if errorlevel 1 exit /B 1
