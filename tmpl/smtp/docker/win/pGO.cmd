@echo off


rem call LOG_ENTER pGO
echo pGO [ENTER]

CALL project\pENV

SET "CONT=%PROJ_CONT%"
SET "CONT_DIR=%PROJ_CONT_DIR%"
SET "CONT_MNT_DIR=%PROJ_CONT_MNT_DIR%"
SET "HOST=%PROJ_HOST%"
SET "HOST_IP=%HOST_IP%"
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

SET "ALIASES=%PROJ_ALIASES%"

rem CALL LOG_VAR CONT %CONT%
echo CONT is %CONT%
rem CALL LOG_VAR CONT_DIR %CONT_DIR%
echo CONT_DIR is %CONT_DIR%
rem CALL LOG_VAR CONT_MNT_DIR %CONT_MNT_DIR%
echo CONT_MNT_DIR is %CONT_MNT_DIR%
rem CALL LOG_VAR HOST %HOST%
echo HOST is %HOST%
rem CALL LOG_VAR HOST_DIR %HOST_DIR%
echo HOST_DIR is %HOST_DIR%
rem CALL LOG_VAR HOST_IP %HOST_IP%
echo HOST_IP is %HOST_IP%
rem CALL LOG_VAR HOST_MNT_DIR %HOST_MNT_DIR%
echo HOST_MNT_DIR is %HOST_MNT_DIR%
rem CALL LOG_VAR IMG %IMG%
echo IMG is %IMG%
rem CALL LOG_VAR LABEL %LABEL%
echo LABEL is %LABEL%
rem CALL LOG_VAR MODE %MODE%
echo MODE is %MODE%
rem CALL LOG_VAR NET %NET%
echo NET is %NET%
rem CALL LOG_VAR PASSWORD %PASSWORD%
echo PASSWORD is %PASSWORD%
rem CALL LOG_VAR PORT_EXT %PORT_EXT%
echo PORT_EXT is %PORT_EXT%
rem CALL LOG_VAR PORT_INT %PORT_INT%
echo PORT_INT is %PORT_INT%
rem CALL LOG_VAR USER %USER%
echo USER is %USER%
rem CALL LOG_VAR VOL %VOL%
echo VOL is %VOL%

rem CALL LOG_VAR ALIASES %ALIASES%
echo ALIASES is %ALIASES%

mkdir -p %HOST_MNT_DIR%

docker run ^
       -%MODE% ^
       -p %HOST%:%PORT_EXT%:%PORT_INT% ^
       -e SMARTHOST_ADDRESS=%HOST% ^
       -e SMARTHOST_ALIASES=%ALIASES% ^
       -e SMARTHOST_PASSWORD=%PASSWORD% ^
       -e SMARTHOST_PORT=%PORT_INT% ^
       -e SMARTHOST_USER=%USER% ^
       --add-host=%HOST%:%HOST_IP% \
       --label=%LABEL% ^
       --mount type=bind,src=%VOL%,dst=%CONT_MNT_DIR% ^
       --name=%CONT% ^
       --network=%NET% ^
       %IMG%

rem call LOG_EXIT pGO
echo pGO [EXIT]

