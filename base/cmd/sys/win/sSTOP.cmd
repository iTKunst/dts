@echo off
CALL settings


call %DIR_BIN%%DIR_SLASH%LOG_ENTER sSTOP

CALL project\pENV

SET CONT=%PROJ_CONT%

call LOG_VAR CONT %CONT%

docker stop %CONT%

call %DIR_BIN%%DIR_SLASH%LOG_ENTER sSTOP

