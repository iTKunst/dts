@echo off


call LOG_ENTER %GLBL_DIR%\kube%CMD_INIT%

xcopy /q /y %DIR_GLBL%\kube%FILES% %DIR_BIN% >NUL

call LOG_EXIT %DIR_GLBL%\kube%CMD_INIT%