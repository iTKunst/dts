@echo off


CALL LOG_ENTER \%DIR_TMPL%%DIR_SLASH%%FILE_INIT%

CALL .%TMPL_DIR%%DCKR_DIR%%DIR_SLASH%%FILE_INIT%
CALL .%TMPL_DIR%%ENV_DIR%%DIR_SLASH%%FILE_INIT%

CALL LOG_EXIT \%DIR_TMPL%%DIR_SLASH%%FILE_INIT%