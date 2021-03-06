@echo off


call LOG_ENTER \%GLBL_DIR%\kube\init

xcopy /q /y .\%DIR_GLBL%\kube\win\*.cmd .\bin >NUL

call LOG_EXIT \%DIR_GLBL%\kube\init