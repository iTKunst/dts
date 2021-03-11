@echo off


call LOG_ENTER %DIR_SYS%%DIR_ENV%%CMD_INIT%

xcopy /q /y %DIR_SYS%%DIR_ENV%%OS_DIR%\*.cmd .%BIN_DIR% >NUL

call LOG_EXIT %DIR_SYS%%DIR_ENV%%CMD_INIT%
