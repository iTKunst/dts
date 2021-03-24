@echo off
CALL settings


call %DIR_BIN%%DIR_SLASH%LOG_ENTER sVIEW

CALL project\pENV

SET IMG_FILTER="reference=%SYS_NAME%*"
SET CONT_FILTER="label=%SYS_NAME%"

call LOG_VAR SYS_NAME %SYS_NAME%
call LOG_VAR IMG_FILTER %IMG_FILTER%
call LOG_VAR CONT_FILTER %CONT_FILTER%

docker images --filter %IMG_FILTER%
docker ps --filter %CONT_FILTER% --filter status=exited --filter status=running

:: CALL inspect.bat

call LOG_EXIT sVIEW

