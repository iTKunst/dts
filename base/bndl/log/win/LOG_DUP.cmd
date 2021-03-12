@echo off


IF %LOG_DUP_ON% NEQ 1 (
  GOTO :EOF
)

SET TMP=%0
SET TMP=%TMP:LOG_DUP=%
:: echo TMP is %TMP%

CALL .\Bundler\log%OS_DIR%\LOG_MSG (%1) [DUP]

:EOF
