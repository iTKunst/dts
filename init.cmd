@echo off


echo dts\init.cmd [ENTER]



  REM TOKENS
  SET "COLON=:"
  SET "DOT=."
  SET "FOR_SLASH=/"
  SET "STAR=*"

  REM NAMES
  SET "BASE=base"
  SET "BIN=bin"
  SET "BNDL=bndl"
  SET "COM=com"
  SET "DTS=dts"
  SET "ENV=env"
  SET "EXT=cmd"
  SET "GIT=git"
  SET "GIT_HUB=github"
  SET "GLBL=glbl"
  SET "HTTPS=https"
  SET "INFO=info"
  SET "INIT=init"
  SET "ITK=iTKunst"
  SET "LOG=log"
  SET "MISC=misc"
  SET "OS=win"
  SET "PROJ=proj"
  SET "SETTINGS=settings"
  SET "SYS=sys"
  SET "TMPL=tmpl"

  REM DIRS

  SET "BASE_DIR=\%BASE%"
  SET "BIN_DIR=%BIN%"
  SET "BNDL_DIR=\%BNDL%"
  SET "ENV_DIR=\%ENV%"
  SET "GLBL_DIR=\%GLBL%"
  SET "GIT_DIR=\%GIT%"
  SET "LOG_DIR=\%LOG%"
  SET "OS_DIR=\%OS%"
  SET "MISC_DIR=\%MISC%"
  SET "PROJ_DIR=\%PROJ%"
  SET "SYS_DIR=\%SYS%"
  SET "TMPL_DIR=\%TMPL%"
 GOTO :END

  REM FILES
  SET "FILE_INIT=%INIT%%DOT%%EXT%"
  SET "FILE_LOG=\LOG%DOT%%EXT%"
  SET "FILE_SETTINGS=%SETTINGS%%DOT%%EXT%"


  SET "DTS_DIR=dts"
  ECHO DTS_DIR is %DTS_DIR% [INFO]

  SET "DIR_BASE=%DTS_DIR%%BASE_DIR%"
  ECHO DIR_BASE is %DIR_BASE% [INFO]

  SET "DIR_BIN=%BIN_DIR%"
  ECHO DIR_BIN is %DIR_BIN% [INFO]

  SET "DIR_BNDL=%DIR_BASE%%BNDL_DIR%"
  ECHO DIR_BNDL is %DIR_BNDL% [INFO]

  SET "DIR_ENV=%DIR_BNDL%%ENV_DIR%"
  ECHO DIR_BNDL is %DIR_BNDL% [INFO]

  SET "DIR_GLBL=%DIR_BNDL%%GLBL_DIR%"
  ECHO DIR_GLBL is %DIR_GLBL% [INFO]

  SET "DIR_PROJ=%DIR_BASE%%PROJ_DIR%"
  ECHO DIR_PROJ is %DIR_PROJ% [INFO]

  SET "DIR_SYS=%DIR_BASE%%SYS_DIR%"
  ECHO DIR_SYS is %DIR_SYS% [INFO]

  SET "DIR_TMPL=%DIR_BASE%%SYS_DIR%"
  ECHO DIR_TMPL is %DIR_TMPL% [INFO]

  SET "FILES=%OS_DIR%\%STAR%%DOT%%EXT%"
  ECHO FILES is %FILES% [INFO]

  if [%TMPL_NAME%]==[] (
    ECHO TMPL_NAME [INVALID]
    ECHO TMPL_NAME must be set in settings.sh. [INFO]
    GOTO :EOF
  )
  ECHO TMPL_NAME is %TMPL_NAME%

  SET "DIR_TMPL_CURR=%DIR_TMPL%\%TMPL_NAME%"
  ECHO DIR_TMPL_CURR is %DIR_TMPL_CURR% [INFO]



  echo DIR_DTS is %DIR_DTS%
  echo DIR_SLASH is \
  echo FILE_INIT is %FILE_INIT%

   if not exist %DIR_BIN% (
rem     mkdir %DIR_BIN%
rem     echo create %DIR_BIN%
   )

  rem CALL %DIR_ENV%\%FILE_INIT%
  rem CALL %DIR_BIN%\bENV


  rem CALL LOG_LOAD %DIR_DTS%\%FILE_INIT%

  rem CALL %DIR_BASE%\%FILE_INIT%
  rem CALL %DIR_TMPL_CURR%\%FILE_INIT%
  rem CALL "..\..\system"\%FILE_INIT%

  rem CALL %DIR_BIN%\"mSET_PATH"
  rem CALL pINIT

rem CALL LOG_LOAD %DIR_DTS%\%FILE_INIT%


:END
echo reached  END

echo dts\init.cmd [EXIT]
