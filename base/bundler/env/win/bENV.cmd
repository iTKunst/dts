@echo off


call LOG_ENTER bENV

CALL settings
CALL bENV_CAT
CALL bENV_NAME
CALL bENV_TKN

SET "DEF_PROJ_MODE=d"
SET "DEF_URI_DTS_GIT=https://github.com/iTKunst/dts"


IF  [%PROJ_MODE%]==[] (
  call LOG_CMD "May be set it in settings.cmd!"
  call LOG_CMD "Setting to default value"
  SET "PROJ_MODE=DEF_PROJ_MODE"
)
call LOG_VAR PROJ_MODE %PROJ_MODE%


if [%URI_DTS_GIT%]==[] (
  call LOG_CMD "May be set it in settings_uri.cmd!"
  call LOG_CMD "Setting to default value"
  SET "URI_DTS_GIT=DEF_URI_DTS_GIT"
)
call LOG_VAR URI_DTS_GIT %URI_DTS_GIT%


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


call LOG_EXIT bENV

