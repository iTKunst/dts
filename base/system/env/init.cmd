@echo off


call LOG_ENTER %DIR_SYS%%ENV_DIR%%CMD_INIT%

xcopy /q /y %DIR_SYS%%ENV_DIR%%OS_DIR%\*.cmd .%BIN_DIR% >NUL

call LOG_EXIT %DIR_SYS%%ENV_DIR%%CMD_INIT%
