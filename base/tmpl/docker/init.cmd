@echo off


CALL LOG_ENTER \%DIR_TMPL%\docker%CMD_INIT%

xcopy /q /y %DIR_TMPL%\docker%FILES% %DIR_BIN% >NUL

CALL LOG_EXIT \%DIR_TMPL%\docker%CMD_INIT%
