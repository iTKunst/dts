@echo off


CALL %DIR_BNDL%\log\win\LOG_LOAD \%DIR_BNDL%\log%CMD_INIT%

xcopy /q /y %DIR_BNDL%\log\win\*.cmd %DIR_BIN% >NUL

CALL %DIR_BNDL%\log\win\LOG_UNLOAD \%DIR_BNDL%\log%CMD_INIT%
