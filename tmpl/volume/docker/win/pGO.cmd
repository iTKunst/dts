@echo off


CALL LOG_ENTER pGO

CALL project\pENV

SET "CONT=%PROJ_CONT%"
SET "CONT_DIR=%PROJ_CONT_DIR%"
SET "HOST=%PROJ_HOST%"
SET "HOST_DIR=%CD%%PROJ_HOST_DIR%"
SET "IMG=%PROJ_IMG%"
SET "LABEL=%PROJ_LABEL%"
SET "MODE=%PROJ_MODE%"
SET "NET=%PROJ_NET%"
SET "PASSWORD=%PROJ_PASSWORD%"
SET "PORT_EXT=%PROJ_PORT_EXT%"
SET "PORT_INT=%PROJ_PORT_INT%"
SET "USER=%PROJ_USER%"
SET "VOL=%PROJ_VOL%"
SET "VOL_DIR=%PROJ_VOL_DIR%"

CALL LOG_VAR CONT %CONT%
CALL LOG_VAR CONT_DIR %CONT_DIR%
CALL LOG_VAR HOST %HOST%
CALL LOG_VAR HOST_DIR %HOST_DIR%
CALL LOG_VAR IMG %IMG%
call LOG_VAR LABEL %LABEL%
call LOG_VAR MODE %MODE%
CALL LOG_VAR NET %NET%
CALL LOG_VAR PASSWORD %PASSWORD%
CALL LOG_VAR PORT_EXT %PORT_EXT%
CALL LOG_VAR PORT_INT %PORT_INT%
CALL LOG_VAR USER %USER%
CALL LOG_VAR VOL %VOL%
CALL LOG_VAR VOL_DIR %VOL_DIR%


docker volume ^
       create ^
       --label=%LABEL% ^
       --name=%CONT% ^
       --network=%NET% ^
       %IMG%

call LOG_EXIT pGO

