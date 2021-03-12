@echo off


IF %LOG_DIR_ERR_ON% NEQ 1 (
  GOTO :EOF
)

CALL .\Bundler\log%OS_DIR%\LOG_MSG (%1) [DIR_ERR]

:EOF
