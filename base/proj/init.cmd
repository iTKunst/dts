@echo off



:: echo init.cmd [LOADED]

  if not exist settings.cmd (
    ECHO settings.cmd not found [FILE_ERR]
    goto :EOF
  )
  CALL settings

  if [%DIR_BNDL%]==[] (
    ECHO DIR_BNDL is invalid [INVALID].
    ECHO You must set it in .\settings.cmd! [CMD]
    ECHO Default value is 'bundler' [CMD]
    GOTO :EOF
  )
  :: echo DIR_BNDL is %DIR_BNDL%


  if exist %DIR_BNDL% (
    CALL .\bin\mSET_PATH
    ECHO Already Initialized [INFO]
    ECHO Run pUPDATE [CMD]
    GOTO :EOF
  )

  :: echo %DIR_BNDL% does not exist [INFO]

  IF NOT EXIST bin (
    :: echo create bin
    mkdir bin
  )

  if [%URI_TMPL_GIT_BASE%]==[] (
    ECHO URI_TMPL_GIT_BASE is invalid [INVALID].
    ECHO You must set it in .\settings_uri.cmd! [CMD]
    ECHO Default value is https://github.com/itkunst [CMD]
    GOTO :EOF
  )
  :: echo URI_TMPL_GIT_BASE is %URI_TMPL_GIT_BASE%

  SET "REPO=%URI_TMPL_GIT_BASE%/"base/"%BNDL_NAME%"
  :: echo REPO is %REPO%

  git clone %REPO% %DIR_BNDL%
  IF %ERRORLEVEL% NEQ 0 (
    ECHO Error cloning %REPO%
    goto :EOF
  )

  CALL .\%DIR_BNDL%\init
  CALL .\bin\mSET_PATH
  CALL bENV

  CALL pINIT

:EOF


CALL LOG_UNLOAD init