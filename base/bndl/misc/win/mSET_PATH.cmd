@echo off


echo mSET_PATH [ENTER]

CALL %DIR_BIN%%DIR_SLASH%LOG_VAR PATH %PATH%

SET "FIND=%CD%\bin"
CALL %DIR_BIN%%DIR_SLASH%LOG_VAR FIND %FIND%

ECHO "%PATH%" | findstr /C:"%FIND%">nul && (
  CALL %DIR_BIN%%DIR_SLASH%LOG_DUP PATH
  GOTO :EOF
)

SET "PATH=%PATH%;%CD%\bin"
ECHO SET "PATH=%PATH%;%CD%\bin" >path.cmd


:EOF

echo mSET_PATH [EXIT]

EXIT /B %ERRORLEVEL%

