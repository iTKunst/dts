@echo off


call LOG_ENTER \%DIR_GLBL%\docker_system\init

xcopy /q /y .\%DIR_GLBL%\docker_system\win\*.cmd .\bin >NUL

call LOG_EXIT \%DIR_GLBL%\docker_system\init