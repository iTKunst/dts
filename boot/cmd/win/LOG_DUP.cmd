@echo off


IF %LOG_DUP_ON% NEQ 1 (
  GOTO :EOF
)

SET TMP=%0
SET TMP=%TMP:LOG_DUP=%
:: echo TMP is %TMP%

CALL %DIR_BNDL%LOG_DIR%OS_DIR%%DIR_SLASH%LOG_MSG (%1) [DUP]

:EOF
