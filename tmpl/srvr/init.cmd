@echo off


CALL LOG_ENTER %TMPL_DIR%%CMD_INIT%

CALL %TMPL_DIR%%DCKR_DIR%%CMD_INIT%
CALL %TMPL_DIR%%ENV_DIR%%CMD_INIT%

CALL LOG_EXIT %TMPL_DIR%%CMD_INIT%