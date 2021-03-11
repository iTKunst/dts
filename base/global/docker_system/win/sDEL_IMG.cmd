@echo off
CALL settings


call LOG_ENTER sDEL_IMG

CALL project\pENV

SET "FILTER='reference=%SYS_NAME%*'"

call LOG_VAR FILTER %FILTER%
call LOG_VAR SYS_NAME %SYS_NAME%

SET "ARTIFACTS=%( docker image ls -q -f %FILTER% )%"

call LOG_VAR ARTIFACTS %ARTIFACTS%
if NOT [%ARTIFACTS%]==[] (
  call LOG_WARN "removing images"
  docker image rm -f $ARTIFACTS
)

call LOG_EXIT sDEL_IMG


