@echo off


IF %LOG_CMD_ON% NEQ 1 (
  GOTO :EOF
)

CALL .\BundlerLOG_DIR%OS_DIR%\LOG_MSG %* [CMD]

:EOF
