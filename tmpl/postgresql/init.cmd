@echo off


CALL LOG_ENTER \%DIR_TMPL%\init

CALL .%TMPL_DIR%%DIR_DCKR%%CMD_INIT%
CALL .\%DIR_TMPL%\env\init

CALL LOG_EXIT \%DIR_TMPL%\init