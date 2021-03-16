@echo off


echo mSET_PATH [ENTER]

rem CALL %DIR_BIN%%DIR_SLASH%LOG_VAR PATH %PATH%
echo PATH is %PATH%

SET "FIND=%CD%\bin"
rem CALL %DIR_BIN%%DIR_SLASH%LOG_VAR FIND %FIND%
echo  FIND  is %FIND%

ECHO "%PATH%" | findstr /C:"%FIND%">nul && (
  rem CALL %DIR_BIN%%DIR_SLASH%LOG_DUP PATH
  echo PATH is already set
  GOTO :END
)

SET "PATH=%PATH%;%CD%%DIR_BIN%"
ECHO SET "PATH=%PATH%;%CD%\bin" >path.cmd


:END

echo mSET_PATH [EXIT]

EXIT /B %ERRORLEVEL%

