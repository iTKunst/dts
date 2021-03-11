@echo off


call LOG_ENTER bENV

CALL settings
CALL bin\bENV_NAME
CALL bin\bENV_TKN

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

SET "DIR_BASE=%DIR_DTS%%BASE_DIR%"
echo DIR_BASE is %DIR_BASE%

SET "DIR_BNDL=%DIR_BASE%%BNDL_DIR%"
echo DIR_BNDL is %DIR_BASE%

SET "DIR_GLBL=%DIR_BASE%%GLBL_DIR%"
echo DIR_GLBL is %DIR_GLBL%

SET "DIR_SYS=%UP%%UP%%SYS%"
echo DIR_SYS is %DIR_SYS%

SET "DIR_TMPL=%DIR_DTS%%TMPL_DIR%"
echo TMPL_DIR is %TMPL_DIR%

SET "DIR_TMPL_CURR=%DIR_TMPL%%TMPL_CUR_DIR%"
echo DIR_TMPL_CURR is %DIR_TMPL_CURR%


call LOG_EXIT bENV

