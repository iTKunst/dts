@echo off

CALL LOG_ENTER %DIR_DTS%%DIR_TEMPLATE%%DIR_TMPL%CMD_INIT%

CALL %DIR_DTS%%DIR_TEMPLATE%%DIR_TMPL%%DIR_DCKR%%CMD_INIT%
CALL %DIR_DTS%%DIR_TEMPLATE%%DIR_TMPL%%DIR_ENV%%CMD_INIT%

CALL LOG_EXIT %DIR_DTS%%DIR_TEMPLATE%%DIR_TMPL%CMD_INIT%
