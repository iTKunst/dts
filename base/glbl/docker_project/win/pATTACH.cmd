@echo off
CALL settings


call LOG_ENTER pATTACH

CALL project\pENV

SET CONT=%PROJ_CONT%
call LOG_VAR CONT %CONT%

docker exec -it %CONT% /bin/bash

IF %ERRORLEVEL% NEQ 0 (
  docker exec -it %CONT% /bin/sh
)

call LOG_EXIT pATTACH
