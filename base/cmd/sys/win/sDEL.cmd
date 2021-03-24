@echo off
CALL settings


call %DIR_BIN%%DIR_SLASH%LOG_ENTER sDEL

CALL project\pENV

SET CONT=%PROJ_CONT%
SET IMG=%PROJ_IMG%

call LOG_VAR CONT %CONT%
call LOG_VAR IMG %IMG%

docker rm -f  %CONT%
docker rmi -f  %IMG%

call %DIR_BIN%%DIR_SLASH%LOG_ENTER sDEL

