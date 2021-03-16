@echo off


call LOG_ENTER %DIR_GLBL%%DIR_SLASH%docker_system%DIR_SLASH%%FILE_INIT%

xcopy /q /y %DIR_GLBL%%DIR_SLASH%docker_system%FILES% %DIR_BIN% >NUL

call LOG_EXIT %DIR_GLBL%\docker_system%DIR_SLASH%%FILE_INIT%
