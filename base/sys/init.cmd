@echo off


CALL LOG_LOAD %DIR_SYS%%CMD_INIT%

source %DIR_SYS%%ENV_DIR%%CMD_INIT%

CALL LOG_UNLOAD %DIR_SYS%%CMD_INIT%