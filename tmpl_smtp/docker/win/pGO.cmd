@echo off


call LOG_ENTER pGO

CALL pENV

SET "CONT=%PROJ_CONT%"
SET "CONT_DIR=%PROJ_CONT_DIR%"
SET "CONT_MNT_DIR=%PROJ_CONT_MNT_DIR%"
SET "HOST=%PROJ_HOST%"
SET "HOST_DIR=%CD%%PROJ_HOST_DIR%"
SET "HOST_MNT_DIR=%CD%%PROJ_HOST_MNT_DIR%"
SET "IMG=%PROJ_IMG%"
SET "LABEL=%PROJ_LABEL%"
SET "MODE=%PROJ_MODE%"
SET "NET=%PROJ_NET%"
SET "PASSWORD=%PROJ_PASSWORD%"
SET "PORT_EXT=%PROJ_PORT_EXT%"
SET "PORT_INT=%PROJ_PORT_INT%"
SET "USER=%PROJ_USER%"
SET "VOL=%PROJ_VOL%"


CALL LOG_VAR CONT %CONT%
CALL LOG_VAR CONT_DIR %CONT_DIR%
CALL LOG_VAR CONT_MNT_DIR %CONT_MNT_DIR%
CALL LOG_VAR HOST %HOST%
CALL LOG_VAR HOST_DIR %HOST_DIR%
CALL LOG_VAR HOST_MNT_DIR %HOST_MNT_DIR%
CALL LOG_VAR IMG %IMG%
call LOG_VAR LABEL %LABEL%
call LOG_VAR MODE %MODE%
CALL LOG_VAR NET %NET%
CALL LOG_VAR PASSWORD %PASSWORD%
CALL LOG_VAR PORT_EXT %PORT_EXT%
CALL LOG_VAR PORT_INT %PORT_INT%
CALL LOG_VAR USER %USER%
call LOG_VAR VOL %VOL%

mkdir -p %HOST_MNT_DIR%

docker run ^
       -%MODE% ^
       -p %HOST%:%PORT_EXT%:%PORT_INT% ^
       --label=%LABEL% ^
       --mount type=bind,src=%VOL%,dst=%CONT_MNT_DIR% ^
       --name=%CONT% ^
       --network=%NET% ^
       %IMG%

call LOG_EXIT pGO

