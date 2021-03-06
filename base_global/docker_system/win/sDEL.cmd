@echo off
CALL settings


call LOG_ENTER sDEL

CALL pENV

SET CONT=%PROJ_CONT%
SET IMG=%PROJ_IMG%

call LOG_VAR CONT %CONT%
call LOG_VAR IMG %IMG%

docker rm -f  %CONT%
docker rmi -f  %IMG%

call LOG_EXIT sDEL

