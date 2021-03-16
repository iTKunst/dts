@echo off


rem call %DIR_BIN%%DIR_SLASH%LOG_ENTER %DIR_GLBL%%DIR_SLASH%docker_global%DIR_SLASH%%FILE_INIT%
rem echo %DIR_GLBL%%DIR_SLASH%docker_global%DIR_SLASH%%FILE_INIT% [ENTER]

xcopy /q /y %DIR_GLBL%%DIR_SLASH%docker_global%FILES% %DIR_BIN% >NUL

rem call %DIR_BIN%%DIR_SLASH%LOG_EXIT %DIR_GLBL%%DIR_SLASH%docker_global%DIR_SLASH%%FILE_INIT%
rem echo %DIR_GLBL%%DIR_SLASH%docker_global%DIR_SLASH%%FILE_INIT% [EXIT]
