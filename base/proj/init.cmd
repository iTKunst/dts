@ECHO off

:: ECHO init.cmd [LOADED]

  REM TOKENS
  SET "BCK_SLASH=\"
  SET "COLON=:"
  SET "DOT=."
  SET "FOR_SLASH=/"
  SET "STAR=*"

  REM NAMES
  SET "BIN=bin"
  SET "BASE=base"
  SET "BNDL=bndl"
  SET "COM=com"
  SET "DTS=dts"
  SET "EXT=cmd"
  SET "GIT_HUB=github"
  SET "HTTPS=https"
  SET "INFO=info"
  SET "INIT=init"
  SET "ITK=iTKunst"
  SET "SET_PATH=mSET_PATH"
  SET "SETTINGS=settings"
  SET "SPRS_CHKOUT=sparse-checkout
  SET "TEMPLATE=template"
  SET "TMPL=tmpl"

  REM DIRS
  SET "DIR_SLASH=%BCK_SLASH%"

  SET "DIR_BASE=%DIR_SLASH%%BASE%"
  SET "DIR_BIN=%BIN%"
  SET "DIR_BNDL=%DIR_SLASH%%BNDL%"
  SET "DIR_TMPL=%DIR_SLASH%%TEMPLATE%"

  REM FILES
  SET "FILE_INIT=%DIR_SLASH%%INIT%%DOT%%EXT%"
  SET "FILE_SETPATH=%BIN%%DIR_SLASH%%SET_PATH%%DOT%%EXT%"
  SET "FILE_SETTINGS=%SETTINGS%%DOT%%EXT%"
  SET "FILE_SPRS_CHKOUT=%DOT%%GIT%%DIR_SLASH%%INFO%%DIR_SLASH%%SPRS_CHKOUT%"

  REM HOSTS
  SET "HOST_GITHUB=%HTTPS%%COLON%%FOR_SLASH%%FOR_SLASH%%GIT_HUB%%DOT%%COM%"

  REM DEFS
  SET "DEF_DIR_DTS=%DTS%
  SET "DEF_URI_DTS_GIT=%HOST_GITHUB%%ITK%%DIR_DTS%


  if not exist %FILE_SETTINGS% (
    ECHO %FILE_SETTINGS% not found [FILE_ERR]
    goto :EOF
  )
  CALL %FILE_SETTINGS%

  if [%DIR_DTS%]==[] (
    ECHO DIR_DTS may be set in settings.sh. [INFO]
    ECHO Setting to default value. [INFO]
    SET "DIR_DTS=%DEF_DIR_DTS%"
  )
  :: ECHO DIR_DTS is %DIR_DTS%

  if exist %FILE_SETPATH% (
    CALL %FILE_SETPATH%
    ECHO Already Initialized [INFO]
    ECHO Run pUPDATE [CMD]
    GOTO :EOF
  )

  if [%TMPL_NAME%]==[] (
    ECHO TMPL_NAME [INVALID]
    ECHO TMPL_NAME must be set in settings.sh. [INFO]
    GOTO :EOF
  )
  :: ECHO TMPL_NAME is %TMPL_NAME%

  if [%URI_DTS_GIT%]==[] (
    ECHO URI_DTS_GIT may be set in settings_uri.sh. [INFO]
    ECHO Setting to default value [INFO].
    SET "URI_DTS_GIT=%DEF_URI_DTS_GIT%"
  )
  :: ECHO URI_DTS_GIT is %URI_DTS_GIT% [INFO]

  SET "TMPL_FLDR=%TMPL%%FOR_SLASH%%TMPL_NAME%%FOR_SLASH%%STAR%"
  :: ECHO TMPL_FLDR is %TMPL_FLDR% [INFO]

  SET "DIR_BNDL=%DIR_DTS%%DIR_BASE%%DIR_BNDL%"
  :: ECHO TMPL_FLDR is %DIR_BNDL% [INFO]

  SET DIR_TMPL=%DIR_TMPL%%SLASH%%TMPL_NAME%

  mkdir -p %DIR_DTS%
  cd %DIR_DTS%

  git init
  git remote add origin -f %URI_DTS_GIT%
  git config core.sparsecheckout true

  (
    ECHO %FILE_INIT%
    ECHO %DIR_BASE%%SLASH%%STAR%
    ECHO %DIR_TMPL%%FILE_INIT%
    ECHO %DIR_TMPL%%SLASH%%STAR%
  ) >> %FILE_SPRS_CHKOUT%

  git pull origin master

  IF NOT EXIST bin (
    :: ECHO bin created [INFO]
    mkdir bin
  )


  CALL %DIR_DTS%%FILE_INIT%
  CALL %FILE_SETPATH%
  CALL bENV

  CALL pINIT

:EOF


:: CALL LOG_UNLOAD init