@echo off
CALL settings


rem call %DIR_BIN%%DIR_SLASH%LOG_ENTER gDEL

call LOG_MSG "!!!!!!Warning!!!!!"
call LOG_MSG "Deletes all containers and images on your machine!"
FOR /f "tokens=*" %%i IN ('docker ps -aq') DO docker rm %%i
FOR /f "tokens=*" %%i IN ('docker images --format "{{.ID}}"') DO docker rmi %%i

call %DIR_BIN%%DIR_SLASH%LOG_EXIT gDEL
