@echo off

:: echo %bSETTING_LOG_ENTER%


IF %LOG_ERR_ON% NEQ 1 (
  GOTO :EOF
)

CALL %DIR_BNDL%LOG_DIR%OS_DIR%%DIR_SLASH%LOG_MSG %* [ERROR]

:EOF

