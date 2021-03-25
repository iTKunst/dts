@echo off


rem CALL %DIR_BIN%%DIR_SLASH%LOG_ENTER %DIR_TMPL_CURR%%ENV_DIR%%FILE_INIT%
rem echo %DIR_TMPL%%ENV_DIR%%FILE_INIT%  [ENTER]

SET "SRC_TMPL=%DIR_TMPL_CURR%%ENV_DIR%%OS_DIR%%DIR_SLASH%tENV.cmd"
rem echo SRC_TMPL is %SRC_TMPL%

xcopy /q /y %SRC_TMPL% %DIR_BIN% >NUL

if not exist project (
  rem echo making project directory
  mkdir project
)

if not exist project\pENV.cmd (
  rem echo copying pENV.cmd to project
  SET "SRC_PROJ=%DIR_TMPL_CURR%%ENV_DIR%%OS_DIR%%DIR_SLASH%pENV.sample.cmd"
  rem echo SRC_PROJ is %SRC_PROJ%

  xcopy /q /y %SRC_PROJ% project
  ren project%DIR_SLASH%pENV.sample.cmd pENV.cmd
)

rem CALL LOG_EXIT \%DIR_TMPL%%ENV_DIR%%FILE_INIT%
rem echo %DIR_TMPL%%ENV_DIR%%FILE_INIT%  [EXIT]
