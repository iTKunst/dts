@echo off


call LOG_ENTER %DIR_GLBL%\docker_global\%FILE_INIT%

xcopy /q /y %DIR_GLBL%\docker_global%FILES% %DIR_BIN% >NUL

call LOG_EXIT %DIR_GLBL%\docker_global\%FILE_INIT%