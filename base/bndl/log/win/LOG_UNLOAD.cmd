@echo off
CALL .\settings

IF %LOG_UNLOAD_ON% NEQ 1 (
  GOTO :EOF
)

CALL .\BundlerLOG_DIR%OS_DIR%\LOG_MSG %1 [UNLOADED]

:EOF
