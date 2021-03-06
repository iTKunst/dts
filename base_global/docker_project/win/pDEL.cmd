@echo off
CALL settings


call LOG_ENTER pDEL

CALL pENV

SET IMG=%PROJ_IMG%

call LOG_VAR IMG %IMG%

docker rmi -f  %IMG%

call LOG_EXIT pDEL
