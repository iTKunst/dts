@echo off
CALL settings


call %DIR_BIN%%DIR_SLASH%LOG_ENTER gVIEW

docker image ls
docker ps -a
docker ps
docker volume ls

call %DIR_BIN%%DIR_SLASH%LOG_ENTER gVIEW