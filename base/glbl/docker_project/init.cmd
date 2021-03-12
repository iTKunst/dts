@echo off


call LOG_ENTER \%DIR_GLBL%\docker_project%CMD_INIT%

xcopy /q /y %DIR_GLBL%\docker_project\win\*.cmd %DIR_BIN% >NUL

call LOG_EXIT \%DIR_GLBL%\docker_project%CMD_INIT%