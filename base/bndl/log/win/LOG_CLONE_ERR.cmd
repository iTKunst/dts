@echo off


IF %LOG_CLONE_ERR_ON% NEQ 1 (
  GOTO :EOF
)

CALL %DIR_BNDL%LOG_DIR%OS_DIR%\LOG_MSG %1 [CLONE_ERR]

:EOF
