@echo off


call LOG_ENTER \%DIR_GLBL%\docker_system%CMD_INIT%

xcopy /q /y %DIR_GLBL%\docker_system\win\*.cmd %DIR_BIN% >NUL

call LOG_EXIT \%DIR_GLBL%\docker_system%CMD_INIT%
