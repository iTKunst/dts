@echo off


rem call %DIR_BIN%%DIR_SLASH%LOG_ENTER %GLBL_DIR%\kube%FILE_INIT%
rem echo %DIR_GLBL%%DIR_SLASH%kube%FILE_INIT% [ENTER]

xcopy /q /y %DIR_GLBL%%DIR_SLASH%kube%FILES% %DIR_BIN% >NUL

rem call LOG_EXIT %DIR_GLBL%\kube%FILE_INIT%
rem echo %DIR_GLBL%%DIR_SLASH%kube%FILE_INIT% [EXIT]
