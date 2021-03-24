@echo off
CALL settings


call %DIR_BIN%%DIR_SLASH%LOG_ENTER gPRUNE

docker image prune -a

call %DIR_BIN%%DIR_SLASH%LOG_EXIT gPRUNE
