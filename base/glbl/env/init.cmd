@echo off


rem CALL %DIR_BIN%%DIR_SLASH%LOG_ENTER %DIR_GLBL%%ENV_DIR%%FILE_INIT%
rem echo %DIR_GLBL%%DIR_SLASH%env%FILE_INIT% [ENTER]

xcopy /q /y %DIR_GLBL%%ENV_DIR%%FILES% %DIR_BIN% >NUL

rem CALL LOG_EXIT %DIR_GLBL%%ENV_DIR%%FILE_INIT%
rem echo %DIR_GLBL%%DIR_SLASH%env%FILE_INIT% [EXIT]
