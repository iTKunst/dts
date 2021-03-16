@echo off


rem call %DIR_BIN%%DIR_SLASH%LOG_ENTER %DIR_GLBL%\openshift%DIR_SLASH%%FILE_INIT%

xcopy /q /y %DIR_GLBL%\openshift%FILES% %DIR_BIN% >NUL

call LOG_EXIT %DIR_GLBL%\openshift%DIR_SLASH%%FILE_INIT%