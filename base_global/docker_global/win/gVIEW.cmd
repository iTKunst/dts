@echo off
CALL settings


call LOG_ENTER gVIEW

docker image ls
docker ps -a
docker ps
docker volume ls

call LOG_EXIT gVIEW