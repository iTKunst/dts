@echo off


CALL LOG_ENTER %TMPL_DIR%%DIR_ENV%%CMD_INIT%

xcopy /q /y %TMPL_DIR%%DIR_ENV%%DIR_OS\*.cmd .%DIR_BIN% >NUL

CALL LOG_EXIT %TMPL_DIR%%DIR_ENV%%CMD_INIT%