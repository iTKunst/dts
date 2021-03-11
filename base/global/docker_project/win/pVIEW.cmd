@echo off
CALL settings


call LOG_ENTER pVIEW

CALL project\pENV

SET CONT=%PROJ_CONT%
SET IMG=%PROJ_IMG%

call LOG_VAR CONT %CONT%
call LOG_VAR IMG %IMG%

docker images %IMG%
docker ps -f name=%CONT%

call LOG_EXIT pVIEW

