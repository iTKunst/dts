@echo off


CALL LOG_ENTER %TMPL_DIR%%ENV_DIR%%FILE_INIT%

xcopy /q /y %TMPL_DIR%%ENV_DIR%%OS_DIR%%DIR_SLASH%tENV.cmd %BIN_DIR% >NUL

CALL LOG_EXIT %TMPL_DIR%%ENV_DIR%%FILE_INIT%