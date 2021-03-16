@echo off


rem CALL %DIR_BIN%%DIR_SLASH%LOG_ENTER %DIR_TMPL_CURR%%ENV_DIR%%DIR_SLASH%%FILE_INIT%
echo %DIR_TMPL_CURR%%ENV_DIR%%DIR_SLASH%%FILE_INIT%  [ENTER]

xcopy /q /y %DIR_TMPL_CURR%%ENV_DIR%%OS_DIR%\tENV.cmd %DIR_BIN% >NUL

if not exist project (
  mkdir project
)

if not exist project\pENV.cmd (
  xcopy /q /y %DIR_TMPL_CURR%%ENV_DIR%%OS_DIR%\pENV.sample.cmd project\pENV.cmd >NUL
)

CALL LOG_EXIT \%DIR_TMPL%%ENV_DIR%%DIR_SLASH%%FILE_INIT%
echo %DIR_TMPL_CURR%%ENV_DIR%%DIR_SLASH%%FILE_INIT%  [EXIT]
