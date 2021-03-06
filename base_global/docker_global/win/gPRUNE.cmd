@echo off
CALL settings


call LOG_ENTER gPRUNE

docker image prune -a

call LOG_EXIT gPRUNE
