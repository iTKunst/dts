@echo off

rem rem echo  %DIR_BNDL%%DIR_SLASH%env%DIR_SLASH%%FILE_INIT% [ENTER]

SET SRC=%DIR_BNDL%%DIR_SLASH%env%FILES%
rem rem echo SRC is %SRC%

xcopy /q /y %SRC% %DIR_BIN% >NUL

rem echo  %DIR_BNDL%%DIR_SLASH%env%DIR_SLASH%%FILE_INIT% [EXIT]
