@echo off


rem CALL %DIR_BIN%%DIR_SLASH%LOG_ENTER %DIR_TMPL%%DIR_SLASH%%FILE_INIT%
rem echo %DIR_TMPL%%DIR_SLASH%%FILE_INIT% [ENTER]

SET "CMD_DCKR=%DIR_TMPL_CURR%%DIR_SLASH%docker%DIR_SLASH%%FILE_INIT%"
rem echo CMD_DCKR is %CMD_DCKR%
CALL %CMD_DCKR%

SET "CMD_ENV=%DIR_TMPL_CURR%%DIR_SLASH%env%DIR_SLASH%%FILE_INIT%"
rem echo CMD_ENV is %CMD_ENV%
CALL %CMD_ENV%


rem CALL LOG_EXIT \%DIR_TMPL%%DIR_SLASH%%FILE_INIT%
rem echo %DIR_TMPL%%DIR_SLASH%%FILE_INIT% [EXIT]