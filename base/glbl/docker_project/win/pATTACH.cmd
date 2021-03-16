@echo off
CALL settings


call %DIR_BIN%%DIR_SLASH%LOG_ENTER pATTACH

CALL project\pENV

SET CONT=%PROJ_CONT%
call LOG_VAR CONT %CONT%

docker exec -it %CONT% /bin/bash

IF %ERRORLEVEL% NEQ 0 (
  docker exec -it %CONT% /bin/sh
)

call %DIR_BIN%%DIR_SLASH%LOG_ENTER pATTACH
