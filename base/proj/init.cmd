@ECHO off


 ECHO init.cmd [LOADED]

  REM TOKENS
  SET "COLON=:"
  SET "DOT=."
  SET "FOR_SLASH=/"

  REM NAMES
  SET "COM=com"
  SET "DTS=dts"
  SET "EXT=cmd"
  SET "GIT=git"
  SET "GIT_HUB=github"
  SET "HTTPS=https"
  SET "INFO=info"
  SET "INIT=init"
  SET "ITK=iTKunst"
  SET "SETTINGS=settings"


  REM FILES
  SET "FILE_INIT=%INIT%%DOT%%EXT%"
  SET "FILE_SETTINGS=%SETTINGS%%DOT%%EXT%"

  REM HOSTS
  SET "HOST_GITHUB=%HTTPS%%COLON%%FOR_SLASH%%FOR_SLASH%%GIT_HUB%%DOT%%COM%"

  REM DEFS
  SET "DEF_DIR_DTS=%DTS%
  SET "DEF_URI_DTS_GIT=%HOST_GITHUB%%FOR_SLASH%%ITK%%DIR_DTS%%DOT%%GIT%


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
   ECHO DIR_DTS is %DIR_DTS%

  if [%URI_DTS_GIT%]==[] (
    ECHO URI_DTS_GIT may be set in settings_uri.sh. [INFO]
    ECHO Setting to default value [INFO].
    SET "URI_DTS_GIT=%DEF_URI_DTS_GIT%"
  )
   ECHO URI_DTS_GIT is %URI_DTS_GIT% [INFO]



  if exist %DIR_DTS% (
    echo pulling changes from dts
    cd %DIR_DTS%
    git pull origin master
    cd ..
  ) ELSE (
    echo cloning dts repo
    git clone %URI_DTS_GIT% %DIR_DTS%
  )

  SET "SRC=%DIR_DTS%\%FILE_INIT%"
  echo SRC is %SRC%

  CALL %SRC%

:END
echo reached end

echo init [EXIT]