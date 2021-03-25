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

SET "ART=%PROJ_ART%"
SET "FILE=%PROJ_FILE%"
SET "GRP=%PROJ_GRP%"
SET "PKG=%PROJ_PKG%"
SET "REPO_HOST=%PROJ_REPO_HOST%"
SET "REPO_IP=%PROJ_REPO_IP%"
SET "REPO_PORT_EXT=%PROJ_REPO_PORT_EXT%"
SET "VER=%PROJ_VER%"

CALL LOG_VAR CONT %CONT%
CALL LOG_VAR CONT_DIR %CONT_DIR%
CALL LOG_VAR CONT_MNT_DIR %CONT_MNT_DIR%
CALL LOG_VAR HOST %HOST%
CALL LOG_VAR HOST_DIR %HOST_DIR%
CALL LOG_VAR HOST_MNT_DIR %HOST_MNT_DIR%
CALL LOG_VAR IMG %IMG%
CALL LOG_VAR LABEL %LABEL%
CALL LOG_VAR MODE %MODE%
CALL LOG_VAR NET %NET%
CALL LOG_VAR PASSWORD %PASSWORD%
CALL LOG_VAR PORT_EXT %PORT_EXT%
CALL LOG_VAR PORT_INT %PORT_INT%
CALL LOG_VAR USER %USER%
CALL LOG_VAR VOL %VOL%

CALL LOG_VAR ART %ART%
CALL LOG_VAR FILE %FILE%
CALL LOG_VAR GRP %GRP%
CALL LOG_VAR PKG %PKG%
CALL LOG_VAR REPO_HOST %REPO_HOST%
CALL LOG_VAR REPO_IP %REPO_IP%
CALL LOG_VAR REPO_PORT_EXT %REPO_PORT_EXT%
CALL LOG_VAR VER VER%

mkdir -p %HOST_MNT_DIR%

docker run ^
       -%MODE% ^
       -e ART=%ART% ^
       -e FILE=%FILE% ^
       -e GRP=%GRP% ^
       -e PKG=%PKG% ^
       -e REPO_HOST=%REPO_HOST% ^
       -e REPO_PORT_EXT=%REPO_PORT_EXT% ^
       -e VER=%VER% ^
       --add-host=%REPO_HOST%:%REPO_IP% ^
       --label=%LABEL% ^
       --mount type=bind,src=%HOST_MNT_DIR%,target=%CONT_MNT_DIR% ^
       --name=%CONT% ^
       %IMG%

call LOG_EXIT pGO
