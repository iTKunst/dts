@echo off


CALL %DIR_BNDL%\log\win\LOG_LOAD \%DIR_BNDL%%ENV_DIR%%CMD_INIT%

xcopy /q /y %DIR_BNDL%%ENV_DIR%\win\*.cmd %DIR_BIN% >NUL

CALL %DIR_BNDL%\log\win\LOG_UNLOAD \%DIR_BNDL%%ENV_DIR%%CMD_INIT%
