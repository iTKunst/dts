@echo off


call LOG_ENTER %GLBL_DIR%\docker_compose\%FILE_INIT%

xcopy /q /y %DIR_GLBL%\docker_compose%FILES% %DIR_BIN% >NUL

call LOG_EXIT %DIR_GLBL%\docker_compose\%FILE_INIT%