@echo off


call %DIR_BIN%%DIR_SLASH%LOG_ENTER %TMPL_DIR%%ENV_DIR%%DIR_SLASH%%FILE_INIT%

xcopy /q /y %TMPL_DIR%%ENV_DIR%%OS_DIR%\tENV.cmd %DIR_BIN% >NUL

call LOG_EXIT %TMPL_DIR%%ENV_DIR%%DIR_SLASH%%FILE_INIT%