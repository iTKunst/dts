@ECHO off



:: ECHO init.cmd [LOADED]

SET "DEF_URI_DTS_GIT=https://github.com/iTKunst/dts"
SET "DEF_DIR_DTS=dts"


  if not exist settings.cmd (
    ECHO settings.cmd not found [FILE_ERR]
    goto :EOF
  )
  CALL settings

  if [%DIR_DTS%]==[] (
    ECHO DIR_DTS may be set in settings.sh. [INFO]
    ECHO Setting to default value. [INFO]
    SET "DIR_DTS=%DEF_DIR_DTS%"
  )
  ECHO DIR_DTS is %DIR_DTS%

  if exist %DIR_DTS% (
    CALL .\bin\mSET_PATH
    ECHO Already Initialized [INFO]
    ECHO Run pUPDATE [CMD]
    GOTO :EOF
  )

  if [%TMPL_NAME%]==[] (
    ECHO TMPL_NAME [INVALID]
    ECHO TMPL_NAME must be set in settings.sh. [INFO]
    GOTO :EOF
  )
  ECHO TMPL_NAME is %TMPL_NAME%

  if [%URI_DTS_GIT%]==[] (
    ECHO URI_DTS_GIT may be set in settings_uri.sh. [INFO]
    ECHO Setting to default value [INFO].
    SET "URI_DTS_GIT=%DEF_URI_DTS_GIT%"
  )
  ECHO URI_DTS_GIT is %URI_DTS_GIT% [INFO]

  SET "TMPL_FLDR='tmpl/'%TMPL_NAME%'/*'"
  ECHO TMPL_FLDR is %TMPL_FLDR% [INFO]

  SET "DIR_BNDL=%DIR_DTS%/base/bundler
  ECHO TMPL_FLDR is %DIR_BNDL% [INFO]

  mkdir -p %DIR_DTS%
  cd %DIR_DTS%

  git init
  git remote add origin -f %URI_DTS_GIT%
  git config core.sparsecheckout true

  ECHO "base/*" >> .git/info/sparse-checkout
  ECHO %TMPL_FLDR% >> .git/info/sparse-checkout

  git pull origin master

  IF NOT EXIST bin (
    ECHO bin created [INFO]
    mkdir bin
  )


  CALL %DIR_BNDL%\init
  CALL bin\mSET_PATH
  CALL bENV

  CALL pINIT

:EOF


CALL LOG_UNLOAD init