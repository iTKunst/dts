@ECHO off


:: ECHO init.cmd [LOADED]

  REM TOKENS
  SET "BCK_SLASH=\"
  SET "COLON=:"
  SET "DOT=."
  SET "FOR_SLASH=/"
  SET "STAR=*"

  REM NAMES
  SET "COM=com"
  SET "DTS=dts"
  SET "EXT=cmd"
  SET "GIT_HUB=github"
  SET "HTTPS=https"
  SET "INFO=info"
  SET "INIT=init"
  SET "ITK=iTKunst"
  SET "SETTINGS=settings"
  SET "TMPL=tmpl"

  REM DIRS
  SET "DIR_SLASH=%BCK_SLASH%"

  REM FILES
  SET "FILE_INIT=%INIT%%DOT%%EXT%"
  SET "FILE_SETTINGS=%SETTINGS%%DOT%%EXT%"

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

  if [%URI_DTS_GIT%]==[] (
    ECHO URI_DTS_GIT may be set in settings_uri.sh. [INFO]
    ECHO Setting to default value [INFO].
    SET "URI_DTS_GIT=%DEF_URI_DTS_GIT%"
  )
  :: ECHO URI_DTS_GIT is %URI_DTS_GIT% [INFO]

  if [%TMPL_NAME%]==[] (
    ECHO TMPL_NAME [INVALID]
    ECHO TMPL_NAME must be set in settings.sh. [INFO]
    GOTO :EOF
  )
  :: ECHO TMPL_NAME is %TMPL_NAME%

  SET "DIR_TMPL_CURR=%DIR_TMPL%%DIR_SLASH%%TMPL_NAME%"
  :: ECHO DIR_TMPL_CURR is %DIR_TMPL_CURR% [INFO]


  if exist %DIR_DTS% (
    cd $DIR_DTS
    git pull origin master
    cd ..
  )
  else (
    git clone %URI_DTS_GIT% --no-checkout %DIR_DTS%
    cd %DIR_DTS%
    git sparse-checkout init --cone
    cd ..
  )


  CALL %DIR_DTS%%DIR_SLASH%%FILE_INIT%

:EOF


:: CALL LOG_UNLOAD init