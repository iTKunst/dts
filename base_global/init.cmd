@echo off


call LOG_ENTER \%DIR_GLBL%\init

CALL .\%DIR_GLBL%\docker_compose\init
CALL .\%DIR_GLBL%\docker_global\init
CALL .\%DIR_GLBL%\docker_project\init
CALL .\%DIR_GLBL%\docker_system\init
CALL .\%DIR_GLBL%\env\init
CALL .\%DIR_GLBL%\git\init
CALL .\%DIR_GLBL%\kube\init
CALL .\%DIR_GLBL%\openshift\init

call LOG_EXIT \%DIR_GLBL%\init
