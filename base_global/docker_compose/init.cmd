@echo off


call LOG_ENTER \%GLBL_DIR%\docker_compose\init

xcopy /q /y .\%DIR_GLBL%\docker_compose\win\*.cmd .\bin >NUL

call LOG_EXIT \%DIR_GLBL%\docker_compose\init