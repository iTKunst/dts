@echo off

call LOG_ENTER \%DIR_TMPL%\docker\init

xcopy /q /y .\%DIR_TMPL%\docker\win\*.cmd .\bin >NUL

call LOG_EXIT \%DIR_TMPL%\docker\init