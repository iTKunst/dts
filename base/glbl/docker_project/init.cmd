@echo off


call %DIR_BIN%%DIR_SLASH%LOG_ENTER %DIR_GLBL%%DIR_SLASH%docker_project%DIR_SLASH%%FILE_INIT%

xcopy /q /y %DIR_GLBL%%DIR_SLASH%docker_project%FILES% %DIR_BIN% >NUL

call %DIR_BIN%%DIR_SLASH%LOG_EXIT %DIR_GLBL%%DIR_SLASH%docker_project%DIR_SLASH%%FILE_INIT%