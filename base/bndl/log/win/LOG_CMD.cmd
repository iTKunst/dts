@echo off


IF %LOG_CMD_ON% NEQ 1 (
  GOTO :EOF
)

CALL .\Bundler\log%OS_DIR%\LOG_MSG %* [CMD]

:EOF
