@echo off


call LOG_ENTER %TMPL_DIR%%DIR_ENV%%CMD_INIT%

xcopy /q /y %TMPL_DIR%%DIR_ENV%%DIR_OS%\tENV.cmd .%DIR_BIN% >NUL

call LOG_EXIT %TMPL_DIR%%DIR_ENV%%CMD_INIT%