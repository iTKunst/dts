@echo off


CALL LOG_ENTER \%DIR_TMPL%%ENV_DIR%%CMD_INIT%

xcopy /q /y %DIR_TMPL%%ENV_DIR%%OS_DIR%\tENV.cmd %DIR_BIN% >NUL

if not exist project (
  mkdir project
)

if not exist project\pENV.cmd (
  xcopy /q /y %DIR_TMPL%%ENV_DIR%%OS_DIR%\pENV.sample.cmd .\project\pENV.cmd >NUL
)

CALL LOG_EXIT \%DIR_TMPL%%ENV_DIR%%CMD_INIT%