@echo off
CALL settings


call LOG_ENTER pDEBUG

CALL pENV

SET "CONT_DIR=%PROJ_CONT_DIR%"
SET "HOST_DIR=%PROJ_HOST_DIR%"
SET "IMG=%PROJ_IMG%"

SET "CONT_CFG_DIR=%PROJ_CONT_CFG_DIR%"
SET "HOST_CFG_DIR=%PROJ_HOST_CFG_DIR%"
SET "USER=%PROJ_USER%"

call LOG_VAR CONT_DIR %CONT_DIR%
call LOG_VAR DCKR_URI %DCKR_URI%
call LOG_VAR HOST_DIR %HOST_DIR%
call LOG_VAR IMG %IMG%

call LOG_VAR CONT_CFG_DIR %CONT_CFG_DIR%
call LOG_VAR HOST_CFG_DIR %HOST_CFG_DIR%
call LOG_VAR MVN_REPO_IP %MVN_REPO_IP%
call LOG_VAR MVN_REPO_URI %MVN_REPO_URI%
call LOG_VAR USER %USER%

REM DOCKER_BUILDKIT=1 ^
docker  build ^
        --build-arg CONT_DIR=%CONT_DIR% ^
        --build-arg HOST_CFG_DIR=%HOST_CFG_DIR% ^
        --build-arg HOST_DIR=%HOST_DIR% ^
        --build-arg SYS_DIR=%SYS_DIR% ^
        --add-host=%MVN_REPO_URI%:%MVN_REPO_IP% ^
        -f %DCKR_URI% ^
        -t %IMG% ^
        .

call LOG_VAR ERRORLEVEL %ERRORLEVEL%

IF %ERRORLEVEL% EQU 0 (
  call LOG_CMD "Please run pGO to create and run the container"
) else (
  call LOG_ERR "Unable to build image"
)

call LOG_EXIT pDEBUG

