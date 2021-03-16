@echo off


call %DIR_BIN%%DIR_SLASH%LOG_ENTER pGO

CALL project\pENV

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

SET "DB_ADDR=%PROJ_DB_ADDR%"
SET "DB_DATABASE=%PROJ_DB_DATABASE%"
SET "DB_PASSWORD=%PROJ_DB_PASSWORD%"
SET "DB_USER=%PROJ_DB_USER%"
SET "DB_VENDOR=%PROJ_DB_VENDOR%"
SET "DBG=%PROJ_DBG%"
SET "DBG_PORT=%PROJ_DBG_PORT%"
SET "IMPORT=%PROJ_IMPORT%"
SET "LOG_LEVEL=%PROJ_LOG_LEVEL%"
SET "PORT_EXT_ADMIN=%PROJ_PORT_EXT_ADMIN%"
SET "PORT_INT_ADMIN=%PROJ_PORT_INT_ADMIN%"
SET "PROXY_FORWARD=%PROJ_PROXY_FORWARD%"
SET "ROOT_LOG_LEVEL=%PROJ_ROOT_LOG_LEVEL%"


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

call LOG_VAR DB_ADDR %DB_ADDR%
call LOG_VAR DB_DATABASE %DB_DATABASE%
call LOG_VAR DB_PASSWORD %DB_PASSWORD%
call LOG_VAR DB_USER %DB_USER%
call LOG_VAR DB_VENDOR %DB_VENDOR%
call LOG_VAR DBG %DBG%
call LOG_VAR DBG_PORT %DBG_PORT%
call LOG_VAR IMPORT %IMPORT%
call LOG_VAR LOG_LEVEL %LOG_LEVEL%
call LOG_VAR PORT_EXT_ADMIN %PORT_EXT_ADMIN%
call LOG_VAR PORT_INT_ADMIN %PORT_INT_ADMIN%
call LOG_VAR PROXY_FORWARD %PROXY_FORWARD%
call LOG_VAR ROOT_LOG_LEVEL %ROOT_LOG_LEVEL%

docker run ^
       -%MODE% ^
       -p %HOST%:%PORT_EXT%:%PORT_INT% ^
       -p %HOST:%PORT_EXT_ADMIN%:%PORT_INT_ADMIN% ^
       -e DB_ADDR=%DB_ADDR% ^
       -e DB_DATABASE=%DB_DATABASE% ^
       -e DB_PASSWORD=%DB_PASSWORD% ^
       -e DB_USER=%DB_USER% ^
       -e DB_VENDOR=%DB_VENDOR% ^
       -e DEBUG=%DBG% ^
       -e DEBUG_PORT=%DBG_PORT% ^
       -e KEYCLOAK_IMPORT=%IMPORT% ^
       -e KEYCLOAK_LOGLEVEL=%LOG_LEVEL% ^
       -e KEYCLOAK_PASSWORD=%PASSWORD% ^
       -e KEYCLOAK_USER=%USER% ^
       -e PROXY_ADDRESS_FORWARDING=%PROXY_FORWARD% ^
       -e ROOT_LOGLEVEL=%ROOT_LOG_LEVEL% ^
       --label=%LABEL% ^
       --mount type=bind,src=%VOL%,dst=%CONT_MNT_DIR% ^
       --name=%CONT% ^
       --network=%NET% ^
       %IMG%

call LOG_EXIT pGO

