@echo off

echo hello
sleep 10
rem rem call %DIR_BIN%%DIR_SLASH%LOG_ENTER %GLBL_DIR%%DIR_SLASH%docker_compose%DIR_SLASH%%FILE_INIT%
echo %DIR_GLBL%%DIR_SLASH%docker_compose%DIR_SLASH%%FILE_INIT% [ENTER]

xcopy /q /y %DIR_GLBL%%DIR_SLASH%docker_compose%FILES% %DIR_BIN% >NUL

rem call %DIR_BIN%%DIR_SLASH%LOG_EXIT %DIR_GLBL%\docker_compose%DIR_SLASH%%FILE_INIT%
echo %DIR_GLBL%%DIR_SLASH%docker_compose%DIR_SLASH%%FILE_INIT% [EXIT]
