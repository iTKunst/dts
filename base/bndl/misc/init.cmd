@echo off


CALL %DIR_BNDL%\log\win\LOG_LOAD \%DIR_BNDL%%MISC_DIR%%CMD_INIT%

xcopy /q /y %DIR_BNDL%%MISC_DIR%\win\*.cmd %DIR_BIN% > NUL

CALL %DIR_BNDL%\log\win\LOG_UNLOAD \%DIR_BNDL%%MISC_DIR%%CMD_INIT%
