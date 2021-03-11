@echo off

call LOG_ENTER \%DIR_TMPL%\env\init

xcopy /q /y .\%DIR_TMPL%\env\win\*.cmd .%DIR_BIN% >NUL

call LOG_EXIT \%DIR_TMPL%\env\init