@echo off
CALL settings


call %DIR_BIN%%DIR_SLASH%LOG_ENTER sINSPECT

SET LABEL=%PROJ_LABEL%
SET FLTR="label=%LABEL%"

call LOG_VAR LABEL %LABEL%
call LOG_VAR FLTR %FLTR%

docker volume ls --filter %FLTR%
call LOG_MSG " "

call %DIR_BIN%%DIR_SLASH%LOG_ENTER sINSPECT

