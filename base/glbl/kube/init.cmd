@echo off


rem call %DIR_BIN%%DIR_SLASH%LOG_ENTER %GLBL_DIR%\kube%DIR_SLASH%%FILE_INIT%

xcopy /q /y %DIR_GLBL%\kube%FILES% %DIR_BIN% >NUL

call LOG_EXIT %DIR_GLBL%\kube%DIR_SLASH%%FILE_INIT%