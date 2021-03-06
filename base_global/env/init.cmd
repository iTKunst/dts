@echo off


CALL LOG_ENTER \%DIR_GLBL%\env\init

xcopy /q /y .\%DIR_GLBL%\env\win\*.cmd .\bin >NUL

CALL LOG_EXIT \%DIR_GLBL%\env\init
