@echo off


call LOG_ENTER pGO

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


call LOG_VAR CONT %CONT%
call LOG_VAR CONT_DIR %CONT_DIR%
call LOG_VAR HOST %HOST%
call LOG_VAR HOST_DIR %HOST_DIR%
call LOG_VAR IMG %IMG%
call LOG_VAR LABEL %LABEL%
call LOG_VAR MODE %MODE%
call LOG_VAR NET %NET%
call LOG_VAR PASSWORD %PASSWORD%
call LOG_VAR PORT_EXT %PORT_EXT%
call LOG_VAR PORT_INT %PORT_INT%
call LOG_VAR USER %USER%
call LOG_VAR VOL %VOL%
call LOG_VAR VOL_DIR %VOL_DIR%

call LOG_VAR DB_NAME %DB_NAME%


docker run ^
       -%MODE% ^
       -p %HOST%:%PORT_EXT%:%PORT_INT% ^
       -v $HOST_DIR:$CONT_DIR \
       -e KEYCLOAK_USER=$USER \
       -e KEYCLOAK_PASSWORD=$PASSWORD \
       --label=%LABEL% ^
       --name=%CONT% ^
       --network=%NET% ^
       %IMG%

call LOG_EXIT pGO

