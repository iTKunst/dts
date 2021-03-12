@echo off
CALL settings


call LOG_ENTER pDEL

CALL project\pENV

SET IMG=%PROJ_IMG%

call LOG_VAR IMG %IMG%

docker rmi -f  %IMG%

call LOG_EXIT pDEL
