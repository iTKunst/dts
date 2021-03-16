@echo off


CALL LOG_ENTER %TMPL_DIR%%ENV_DIR%%DIR_SLASH%%FILE_INIT%

xcopy /q /y %TMPL_DIR%%ENV_DIR%%OS_DIR%\tENV.cmd %DIR_BIN% >NUL

if not exist project (
  mkdir project
)

if not exist project\pENV_MOD.cmd (
  xcopy /q /y %TMPL_DIR%%ENV_DIR%%OS_DIR%\pENV_MOD.sample.cmd .\project\pENV_MOD.cmd >NUL
)

CALL LOG_EXIT %TMPL_DIR%%ENV_DIR%%DIR_SLASH%%FILE_INIT%