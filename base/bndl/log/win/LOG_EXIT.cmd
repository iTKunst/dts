@echo off

IF %LOG_EXIT_ON% NEQ 1 (
  GOTO :EOF
)

CALL .\BundlerLOG_DIR%OS_DIR%\LOG_MSG %1 [EXIT]

:EOF
