@echo off


CALL LOG_ENTER %TMPL_DIR%%DIR_ENV%%CMD_INIT%

xcopy /q /y %TMPL_DIR%%DIR_ENV%%DIR_OS%\*.cmd .%DIR_BIN% >NUL

if not exist project (
  mkdir project
)

if not exist project\pENV_MOD.cmd (
  xcopy /q /y %TMPL_DIR%%DIR_ENV%%DIR_OS%\pENV_MOD.sample.cmd .\project\pENV_MOD.cmd >NUL
)

CALL LOG_EXIT %TMPL_DIR%%DIR_ENV%%CMD_INIT%