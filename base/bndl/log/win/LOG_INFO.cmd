@echo off
CALL .\settings

IF %LOG_CMD_ON% NEQ 1 (
  GOTO :EOF
)

CALL %DIR_BNDL%LOG_DIR%OS_DIR%\LOG_MSG %* [INFO]

:EOF
