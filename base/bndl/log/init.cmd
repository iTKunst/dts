@echo off


rem echo  %DIR_BNDL%%DIR_SLASH%log%DIR_SLASH%%FILE_INIT% [ENTER]

SET SRC=%DIR_BNDL%%DIR_SLASH%log%FILES%
rem echo SRC is %SRC%

xcopy /q /y %SRC% %DIR_BIN% >NUL

rem echo  %DIR_BNDL%%DIR_SLASH%log%DIR_SLASH%%FILE_INIT% [EXIT]
