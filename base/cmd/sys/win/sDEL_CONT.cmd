@echo off
CALL settings


call %DIR_BIN%%DIR_SLASH%LOG_ENTER sDEL_CONT

CALL project\pENV

SET "FILTER='label=%SYS_NAME%'"

call LOG_VAR FILTER %FILTER%
call LOG_VAR SYS_NAME %SYS_NAME%

SET "ARTIFACTS=%( docker ps -a -f %FILTER% -f status=exited -q )"

call LOG_VAR ARTIFACTS %ARTIFACTS%
if NOT [%ARTIFACTS%]==[] (
  call LOG_WARN "removing containers"
  docker rm -f %ARTIFACTS%
)

call %DIR_BIN%%DIR_SLASH%LOG_EXIT sDEL_CONT

