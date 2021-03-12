@echo off


call LOG_ENTER \%GLBL_DIR%\docker_compose%CMD_INIT%

xcopy /q /y %DIR_GLBL%\docker_compose%OS_DIR%\*.cmd %DIR_BIN% >NUL

call LOG_EXIT \%DIR_GLBL%\docker_compose%CMD_INIT%