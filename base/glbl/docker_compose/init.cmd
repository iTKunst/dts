@echo off


call %DIR_BIN%%DIR_SLASH%LOG_ENTER %GLBL_DIR%\docker_compose%DIR_SLASH%%FILE_INIT%

xcopy /q /y %DIR_GLBL%\docker_compose%FILES% %DIR_BIN% >NUL

call %DIR_BIN%%DIR_SLASH%LOG_ENTER %DIR_GLBL%\docker_compose%DIR_SLASH%%FILE_INIT%