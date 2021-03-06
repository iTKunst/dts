@echo off


call LOG_ENTER \%DIR_GLBL%\openshift\init

xcopy /q /y .\%DIR_GLBL%\openshift\win\*.cmd .\bin >NUL

call LOG_EXIT \%DIR_GLBL%\openshift\init