@echo off
CALL .\settings

IF %LOG_UNLOAD_ON% NEQ 1 (
  GOTO :EOF
)

CALL .\Bundler\log%OS_DIR%\LOG_MSG %1.cmd [UNLOADED]

:EOF
