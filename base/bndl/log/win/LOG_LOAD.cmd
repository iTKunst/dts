@echo off
CALL .\settings

IF %LOG_LOAD_ON% NEQ 1 (
  GOTO :EOF
)

CALL %DIR_BNDL%\log%OS_DIR%\LOG_MSG %1.cmd [LOADED]

:EOF
