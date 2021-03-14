@echo off

:: echo %bSETTING_LOG_ENTER%


IF %LOG_ERR_ON% NEQ 1 (
  GOTO :EOF
)

CALL .\BundlerLOG_DIR%OS_DIR%\LOG_MSG %* [ERROR]

:EOF


