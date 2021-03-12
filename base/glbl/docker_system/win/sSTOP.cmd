@echo off
CALL settings


call LOG_ENTER sSTOP

CALL project\pENV

SET CONT=%PROJ_CONT%

call LOG_VAR CONT %CONT%

docker stop %CONT%

call LOG_EXIT sSTOP

