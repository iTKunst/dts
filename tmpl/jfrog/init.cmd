@echo off


call %DIR_BIN%%DIR_SLASH%LOG_ENTER \%DIR_TMPL%%FILE_INIT%

CALL .%TMPL_DIR%%DCKR_DIR%%FILE_INIT%
CALL .%TMPL_DIR%%ENV_DIR%%FILE_INIT%

call LOG_EXIT \%DIR_TMPL%%FILE_INIT%