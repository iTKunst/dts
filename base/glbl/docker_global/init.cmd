@echo off


call LOG_ENTER %DIR_GLBL%%DIR_SLASH%docker_global%DIR_SLASH%%FILE_INIT%

xcopy /q /y %DIR_GLBL%%DIR_SLASH%docker_global%FILES% %DIR_BIN% >NUL

call LOG_EXIT %DIR_GLBL%%DIR_SLASH%docker_global%DIR_SLASH%%FILE_INIT%