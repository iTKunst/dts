@echo off

CALL LOG_ENTER %TMPL_DIR%%FILE_INIT%

CALL %TMPL_DIR%%DCKR_DIR%%FILE_INIT%
CALL %TMPL_DIR%%ENV_DIR%%FILE_INIT%

CALL LOG_EXIT %TMPL_DIR%%FILE_INIT%