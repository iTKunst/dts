@echo off


CALL LOG_ENTER %TMPL_DIR%%DCKR_DIR%%CMD_INIT%

xcopy /q /y %TMPL_DIR%%DCKR_DIR%%DIR_OS\*.cmd .%DIR_BIN% >NUL

CALL LOG_EXIT %TMPL_DIR%%DCKR_DIR%%CMD_INIT%
