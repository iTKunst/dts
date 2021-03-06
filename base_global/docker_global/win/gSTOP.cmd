@echo off
CALL settings


call LOG_ENTER gSTOP

call LOG_MSG "!!!!!!Warning!!!!!"
call LOG_MSG "Stops all containers on your machine!"
FOR /f "tokens=*" %%i IN ('docker ps -aq') DO docker stop %%i

call LOG_EXIT gSTOP
