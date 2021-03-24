@echo off
CALL settings


call %DIR_BIN%%DIR_SLASH%LOG_ENTER pDEL

CALL project\pENV

SET IMG=%PROJ_IMG%

call LOG_VAR IMG %IMG%

docker rmi -f  %IMG%

call %DIR_BIN%%DIR_SLASH%LOG_ENTER pDEL
