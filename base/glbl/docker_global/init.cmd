@echo off


call LOG_ENTER \%DIR_GLBL%\docker_global%CMD_INIT%

xcopy /q /y %DIR_GLBL%\docker_global\win\*.cmd %DIR_BIN% >NUL

call LOG_EXIT \%DIR_GLBL%\docker_global%CMD_INIT%