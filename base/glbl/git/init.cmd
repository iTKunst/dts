@echo off


call LOG_ENTER \%DIR_GLBL%\git%CMD_INIT%

xcopy /q /y %DIR_GLBL%\git%FILES% %DIR_BIN% >NUL

call LOG_EXIT \%DIR_GLBL%\git%CMD_INIT%
