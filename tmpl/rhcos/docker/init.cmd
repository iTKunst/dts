@echo off


CALL LOG_ENTER %TMPL_DIR%%DCKR_DIR%%FILE_INIT%

xcopy /q /y %TMPL_DIR%%DCKR_DIR%%FILES% %DIR_BIN% >NUL

CALL LOG_EXIT %TMPL_DIR%%DCKR_DIR%%DIR_SLASH%%FILE_INIT%
