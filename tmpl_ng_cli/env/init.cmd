@echo off


CALL LOG_ENTER \%DIR_TMPL%\env\init

xcopy /q /y .\%DIR_TMPL%\env\win\*.cmd .\bin >NUL

if not exist project (
  mkdir project
)

if not exist project\pENV_MOD.cmd (
  xcopy /q /y .\%DIR_TMPL%\env\win\pENV_MOD.sample.cmd .\project\pENV_MOD.cmd >NUL
)

CALL LOG_EXIT \%DIR_TMPL%\env\init