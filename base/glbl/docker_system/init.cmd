@echo off


rem call %DIR_BIN%%DIR_SLASH%LOG_ENTER %DIR_GLBL%%DIR_SLASH%docker_system%DIR_SLASH%%FILE_INIT%
echo %DIR_GLBL%%DIR_SLASH%docker_system%DIR_SLASH%%FILE_INIT% [ENTER]

xcopy /q /y %DIR_GLBL%%DIR_SLASH%docker_system%FILES% %DIR_BIN% >NUL

rem call %DIR_BIN%%DIR_SLASH%LOG_ENTER %DIR_GLBL%\docker_system%DIR_SLASH%%FILE_INIT%
echo %DIR_GLBL%%DIR_SLASH%docker_system%DIR_SLASH%%FILE_INIT% [EXIT]
