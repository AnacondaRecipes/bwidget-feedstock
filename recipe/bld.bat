set TCL_LIB_PATH=%PREFIX%\Library\lib\tcl8.6\%PKG_NAME%%PKG_VERSION%
mkdir %TCL_LIB_PATH% || exit /b 1
xcopy src\*.tcl %TCL_LIB_PATH%\ || exit /b 1
xcopy src\images %TCL_LIB_PATH%\images\ || exit /b 1
xcopy src\lang %TCL_LIB_PATH%\lang\ || exit /b 1
copy src\LICENSE.txt %TCL_LIB_PATH%\ || exit /b 1
