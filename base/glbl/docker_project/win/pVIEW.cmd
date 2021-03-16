@echo off
CALL settings


call %DIR_BIN%%DIR_SLASH%LOG_ENTER pVIEW

CALL project\pENV

SET CONT=%PROJ_CONT%
SET IMG=%PROJ_IMG%

call LOG_VAR CONT %CONT%
call LOG_VAR IMG %IMG%

docker images %IMG%
docker ps -f name=%CONT%

call %DIR_BIN%%DIR_SLASH%LOG_ENTER pVIEW

