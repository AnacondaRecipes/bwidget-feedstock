echo puts [info tclversion] | tclsh > tmpfile.tcl
set /p TCL_VERSION=<tmpfile.tcl
del tmpfile.tcl

set TCL_LIB_PATH=%PREFIX%\Library\lib\tcl%TCL_VERSION%\%PKG_NAME%%PKG_VERSION%

mkdir %TCL_LIB_PATH% || exit /b 1

xcopy src\* %TCL_LIB_PATH%\ /s /e || exit /b 1
