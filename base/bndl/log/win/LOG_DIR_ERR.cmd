@echo off


IF %LOG_DIR_ERR_ON% NEQ 1 (
  GOTO :EOF
)

CALL .\BundlerLOG_DIR%OS_DIR%\LOG_MSG (%1) [DIR_ERR]

:EOF
