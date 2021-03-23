@echo off


rem call %DIR_BIN%%DIR_SLASH%LOG_ENTER %DIR_GLBL%%DIR_SLASH%docker_system%FILE_INIT%
rem echo %DIR_GLBL%%DIR_SLASH%docker_system%FILE_INIT% [ENTER]

xcopy /q /y %DIR_GLBL%%DIR_SLASH%docker_system%FILES% %DIR_BIN% >NUL

rem call %DIR_BIN%%DIR_SLASH%LOG_ENTER %DIR_GLBL%\docker_system%FILE_INIT%
rem echo %DIR_GLBL%%DIR_SLASH%docker_system%FILE_INIT% [EXIT]
