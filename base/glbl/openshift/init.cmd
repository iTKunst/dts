@echo off


call LOG_ENTER \%DIR_GLBL%\openshift%CMD_INIT%

xcopy /q /y %DIR_GLBL%\openshift%FILES% %DIR_BIN% >NUL

call LOG_EXIT \%DIR_GLBL%\openshift%CMD_INIT%