@echo off


CALL %DIR_BNDL%\log%OS_DIR%\LOG_LOAD \%DIR_BNDL%\git%CMD_INIT%

xcopy /q /y %DIR_BNDL%\git%OS_DIR%\*.cmd %DIR_BIN% >NUL

CALL %DIR_BNDL%\log%OS_DIR%\LOG_UNLOAD \%DIR_BNDL%\git%CMD_INIT%

