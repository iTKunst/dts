@echo off

call LOG_ENTER %TMPL_DIR%%DIR_DCKR%%CMD_INIT%

xcopy /q /y %TMPL_DIR%%DIR_DCKR%%DIR_OS%\*.cmd .%DIR_BIN% >NUL

call LOG_EXIT %TMPL_DIR%%DIR_DCKR%%CMD_INIT%