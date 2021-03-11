@echo off


call LOG_ENTER %SYS_DIR%%DIR_ENV%%CMD_INIT%

xcopy /q /y %SYS_DIR%%DIR_ENV%%OS_DIR%\*.cmd .%BIN_DIR% >NUL

call LOG_EXIT %SYS_DIR%%DIR_ENV%%CMD_INIT%
