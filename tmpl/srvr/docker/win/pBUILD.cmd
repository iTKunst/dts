@echo off
CALL settings


call LOG_ENTER pBUILD

CALL project\pENV

SET "CERT_DIR=%PROJ_CERT_DIR%"
SET "CONT_DIR=%PROJ_CONT_DIR%"
SET "HOST_DIR=%PROJ_HOST_DIR%"
SET "IMG=%PROJ_IMG%"
SET "USER=%PROJ_USER%"

SET "REPO_HOST=%PROJ_REPO_HOST%"
SET "REPO_IP=%PROJ_REPO_IP%"
SET "REPO_PORT_EXT=%PROJ_REPO_PORT_EXT%"

call LOG_VAR CERT_DIR %CERT_DIR%
call LOG_VAR CONT_DIR %CONT_DIR%
call LOG_VAR DCKR_URI %DCKR_URI%
call LOG_VAR DIR_SYS %DIR_SYS%
call LOG_VAR DIR_TMPL %DIR_TMPL%
call LOG_VAR HOST_DIR %HOST_DIR%
call LOG_VAR IMG %IMG%
call LOG_VAR USER %USER%

call LOG_VAR REPO_HOST %REPO_HOST%
call LOG_VAR REPO_IP %REPO_IP%
call LOG_VAR REPO_PORT_EXT %REPO_PORT_EXT%

REM DOCKER_BUILDKIT=1 ^
docker  build ^
        --build-arg CERT_DIR=%CERT_DIR% ^
        --build-arg CONT_DIR=%CONT_DIR% ^
        --build-arg HOST_CFG_DIR=%HOST_CFG_DIR% ^
        --build-arg HOST_DIR=%HOST_DIR% ^
        --build-arg SYS_DIR=%DIR_SYS% ^
        --build-arg TMPL_DIR=%DIR_TMPL% ^
        --add-host=%REPO_HOST%:%REPO_IP% ^
        -f %DCKR_URI% ^
        -t %IMG% ^
        .

call LOG_VAR ERRORLEVEL %ERRORLEVEL%

IF %ERRORLEVEL% EQU 0 (
  call LOG_CMD "Please run pGO to create and run the container"
) else (
  call LOG_ERR "Unable to build image"
)

call LOG_EXIT pBUILD

