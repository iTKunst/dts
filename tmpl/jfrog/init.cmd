@echo off


call LOG_ENTER \%DIR_TMPL%%CMD_INIT%

CALL .%TMPL_DIR%%DCKR_DIR%%CMD_INIT%
CALL .%TMPL_DIR%%ENV_DIR%%CMD_INIT%

call LOG_EXIT \%DIR_TMPL%%CMD_INIT%