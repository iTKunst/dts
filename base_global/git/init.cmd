@echo off


call LOG_ENTER \%DIR_GLBL%\git\init

xcopy /q /y .\%DIR_GLBL%\git\win\*.cmd .\bin >NUL

call LOG_EXIT \%DIR_GLBL%\git\init
