@echo off


CALL LOG_ENTER \%DIR_GLBL%%ENV_DIR%\init

xcopy /q /y .\%DIR_GLBL%%ENV_DIR%\win\*.cmd .\bin >NUL

CALL LOG_EXIT \%DIR_GLBL%%ENV_DIR%\init
