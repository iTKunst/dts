@echo off
CALL settings


call LOG_ENTER sINSPECT

SET LABEL=%PROJ_LABEL%
SET FLTR="label=%LABEL%"

call LOG_VAR LABEL %LABEL%
call LOG_VAR FLTR %FLTR%

docker volume ls --filter %FLTR%
call LOG_MSG " "

call LOG_EXIT sINSPECT

