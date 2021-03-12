@echo off

:: echo %bSETTING_LOG_ENTER%


IF %LOG_ERR_ON% NEQ 1 (
  GOTO :EOF
)

CALL .\Bundler\log%OS_DIR%\LOG_MSG %* [ERROR]

:EOF


