@echo off


CALL LOG_LOAD %DIR_BNDL%%MISC_DIR%%CMD_INIT%

xcopy /q /y %DIR_BNDL%%MISC_DIR%%FILES% %DIR_BIN% > NUL

CALL LOG_UNLOAD %DIR_BNDL%%MISC_DIR%%CMD_INIT%
