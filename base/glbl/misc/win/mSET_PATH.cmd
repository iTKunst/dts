@echo off


rem echo mSET_PATH [ENTER]

rem CALL %DIR_BIN%%DIR_SLASH%LOG_VAR PATH %PATH%
rem echo PATH is %PATH%

SET "FIND=%CD%%DIR_SLASH%%DIR_BIN"
rem CALL %DIR_BIN%%DIR_SLASH%LOG_VAR FIND %FIND%
rem echo  FIND is %FIND%

ECHO "%PATH%" | findstr /C:"%FIND%">nul && (
  rem CALL %DIR_BIN%%DIR_SLASH%LOG_DUP PATH
  rem echo PATH is already set
  GOTO :END
)

SET "PATH=%CD%%DIR_SLASH%%DIR_BIN%;%PATH%"
ECHO SET "PATH=%CD%%DIR_SLASH%%DIR_BIN%;%PATH%" >path.cmd


:END

rem echo mSET_PATH [EXIT]

EXIT /B %ERRORLEVEL%

