@echo off


CALL %DIR_BIN%%DIR_SLASH%LOG_ENTER %TMPL_DIR%%ENV_DIR%%DIR_SLASH%%FILE_INIT%

xcopy /q /y %TMPL_DIR%%ENV_DIR%%OS_DIR%\tENV.cmd %DIR_BIN% >NUL

if not exist project (
  mkdir project
)

if not exist project\pENV.cmd (
  xcopy /q /y %TMPL_DIR%%ENV_DIR%%OS_DIR%\pENV.sample.cmd .\project\pENV.cmd >NUL
)

CALL LOG_EXIT %TMPL_DIR%%ENV_DIR%%DIR_SLASH%%FILE_INIT%