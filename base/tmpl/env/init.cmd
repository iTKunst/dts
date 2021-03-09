@echo off


CALL LOG_ENTER \%DIR_TMPL%\env\init

xcopy /q /y .\%DIR_TMPL%\env\win\tENV.cmd .\bin >NUL

if not exist project (
  mkdir project
)

if not exist project\pENV.cmd (
  xcopy /q /y .\%DIR_TMPL%\env\win\pENV.sample.cmd .\project\pENV.cmd >NUL
)

CALL LOG_EXIT \%DIR_TMPL%\env\init