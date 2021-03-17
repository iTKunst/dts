@echo off


rem echo bENV [ENTER]

CALL settings
CALL bin\bENV_DIRS
CALL bin\bENV_NAMES
CALL bin\bENV_TKNS

SET "DEF_PROJ_MODE=d"
SET "DEF_URI_DTS_GIT=https://github.com/iTKunst/dts"


IF  [%PROJ_MODE%]==[] (
  echo PROJ_MODE may be set it in settings.sh. [CMD]
  echo Setting to default. [INFO]
  SET "PROJ_MODE=DEF_PROJ_MODE"
)
REM echo PROJ_MODE is %PROJ_MODE%


if [%URI_DTS_GIT%]==[] (
  echo URI_DTS_GIT may be set it in settings_uri.sh. [INFO]
  echo Setting to default. [INFO]
  SET "URI_DTS_GIT=DEF_URI_DTS_GIT"
)
REM echo URI_DTS_GIT is %URI_DTS_GIT%


IF  [%PROJ_NAME%]==[] (
  echo PROJ_NAME [INVALID]
  echo Must be set it in settings.sh! [CMD]
  GOTO :EOF
)
REM echo PROJ_NAME is %PROJ_NAME%


IF  [%SYS_NAME%]==[] (
  echo SYS_NAME [INVALID]
  echo Must set it in settings.sh! [CMD]
  GOTO :EOF
)
REM echo SYS_NAME is %SYS_NAME%


if [%TMPL_NAME%]==[] (
  echo TMPL_NAME [INVALID]
  echo You must set it in settings.sh! [CMD]
  GOTO :EOF
)
REM rem echo TMPL_NAME is %TMPL_NAME%



rem echo bENV [EXIT]

