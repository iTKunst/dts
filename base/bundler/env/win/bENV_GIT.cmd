@echo off


call LOG_ENTER bENV_GIT

CALL bENV_CAT
CALL bENV_TKN

IF  [%PROJ_MODE%]==[] (
  SET "PROJ_MODE=d"
)
call LOG_VAR PROJ_MODE %PROJ_MODE%

IF  [%PROJ_NAME%]==[] (
  call LOG_INVALID "PROJ_NAME"
  call LOG_CMD "You must set it in settings.cmd!"
  GOTO :EOF
)
call LOG_VAR PROJ_NAME %PROJ_NAME%

IF  [%SYS_NAME%]==[] (
  call LOG_INVALID "SYS_NAME"
  call LOG_CMD "You must set it in settings.cmd!"
  GOTO :EOF
)
call LOG_VAR SYS_NAME %SYS_NAME%

if [%TMPL_NAME%]==[] (
  call LOG_INVALID "TMPL_NAME"
  call LOG_CMD "You must set it in settings.cmd!"
  GOTO :EOF
)
call LOG_VAR TMPL_NAME %TMPL_NAME%

if [%URI_DTS_GIT%]==[] (
  call LOG_CMD "Should be set it in settings_uri.cmd!"
  call LOG_CMD "Setting to default value"
  SET "URI_DTS_GIT=https://github.com/iTKunst/dts"
)
call LOG_VAR URI_DTS_GIT %URI_DTS_GIT%


:EOF


call LOG_EXIT bENV_GIT
