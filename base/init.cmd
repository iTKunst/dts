@echo off

SET "DIR=%DIR_DTS%%DIR_BASE%"

CALL %DIR_BNDL%\log\win\LOG_LOAD %DIR%%CMD_INIT%

CALL %DIR%%DIR_BNDL%%CMD_INIT%
CALL %DIR%%DIR_GLBL%%CMD_INIT%
CALL %DIR%%DIR_PROJ%%CMD_INIT%
CALL %DIR%%DIR_SYS%%CMD_INIT%

CALL %DIR_BNDL%\log\win\LOG_UNLOAD %DIR%%CMD_INIT%