@echo off

echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%                                                                %%%%%%%%%%%%"
echo "%%%%%%%%%                 Docker Templating System (DTS)                     %%%%%%%%%%"
echo "%%%%%%%%%                           pGO [ENTER]                              %%%%%%%%%%"
echo "%%%%%%%%%%%                                                                %%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"


CALL LOG_ENTER pGO

CALL project\pENV

SET "CONT=%PROJ_CONT%"
CALL LOG_VAR CONT %CONT%
SET "CONT_DIR=%PROJ_CONT_DIR%"
CALL LOG_VAR CONT_DIR %CONT_DIR%
SET "CONT_MNT_DIR=%PROJ_CONT_MNT_DIR%"
CALL LOG_VAR CONT_MNT_DIR %CONT_MNT_DIR%
SET "HOST=%PROJ_HOST%"
CALL LOG_VAR HOST %HOST%
SET "HOST_DIR=%CD%%PROJ_HOST_DIR%"
CALL LOG_VAR HOST_DIR %HOST_DIR%
SET "HOST_MNT_DIR=%CD%%PROJ_HOST_MNT_DIR%"
CALL LOG_VAR HOST_MNT_DIR %HOST_MNT_DIR%
SET "IMG=%PROJ_IMG%"
CALL LOG_VAR IMG %IMG%
SET "LABEL=%PROJ_LABEL%"
CALL LOG_VAR LABEL %LABEL%
SET "MODE=%PROJ_MODE%"
CALL LOG_VAR MODE %MODE%
SET "NET=%PROJ_NET%"
CALL LOG_VAR NET %NET%
SET "PASSWORD=%PROJ_PASSWORD%"
CALL LOG_VAR PASSWORD %PASSWORD%
SET "PORT_EXT=%PROJ_PORT_EXT%"
CALL LOG_VAR PORT_EXT %PORT_EXT%
SET "PORT_INT=%PROJ_PORT_INT%"
CALL LOG_VAR PORT_INT %PORT_INT%
SET "USER=%PROJ_USER%"
CALL LOG_VAR USER %USER%
SET "VOL=%PROJ_VOL%"
CALL LOG_VAR VOL %VOL%


SET "FILE=%PROJ_FILE%"
CALL LOG_VAR FILE %FILE%




mkdir -p %HOST_MNT_DIR%

docker run ^
       -%MODE% ^
       --label=%LABEL% ^
       --mount type=bind,src=%HOST_MNT_DIR%,target=%CONT_MNT_DIR% ^
       --name=%CONT% ^
       %IMG% ^
       generate ^
       -i %FILE% ^
       -l spring ^
       -o /%CONT_MNT_DIR%

call LOG_EXIT pGO

echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%                                                                %%%%%%%%%%%%"
echo "%%%%%%%%%                 Docker Templating System (DTS)                     %%%%%%%%%%"
echo "%%%%%%%%%                           pGO [EXIT]                              %%%%%%%%%%"
echo "%%%%%%%%%%%                                                                %%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
