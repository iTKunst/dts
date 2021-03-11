@echo off


CALL LOG_ENTER \%DIR_TMPL%%ENV_DIR%\init

xcopy /q /y .\%DIR_TMPL%%ENV_DIR%\win\tENV.cmd .\bin >NUL

if not exist project (
  mkdir project
)

if not exist project\pENV.cmd (
  xcopy /q /y .\%DIR_TMPL%%ENV_DIR%\win\pENV.sample.cmd .\project\pENV.cmd >NUL
)

CALL LOG_EXIT \%DIR_TMPL%%ENV_DIR%\init