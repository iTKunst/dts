@echo off


call LOG_ENTER \%DIR_GLBL%\docker_project\init

xcopy /q /y .\%DIR_GLBL%\docker_project\win\*.cmd .\bin >NUL

call LOG_EXIT \%DIR_GLBL%\docker_project\init