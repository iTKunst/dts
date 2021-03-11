@echo off
CALL settings


CALL LOG_ENTER pBUILD

CALL project\pENV

SET "CONT_DIR=%PROJ_CONT_DIR%"
SET "HOST_DIR=%PROJ_HOST_DIR%"
SET "IMG=%PROJ_IMG%"
SET "USER=%PROJ_USER%"

SET "ART=%PROJ_ART%"
SET "GRP=%PROJ_GRP%"
SET "REPO_URL=%PROJ_REPO_URL%"
SET "REPO_PORT=%PROJ_REPO_PORT%"
SET "VER=%PROJ_VER%"

CALL LOG_VAR CONT_DIR %CONT_DIR%
CALL LOG_VAR DCKR_URI %DCKR_URI%
CALL LOG_VAR HOST_DIR %HOST_DIR%
CALL LOG_VAR IMG %IMG%
CALL LOG_VAR MVN_REPO_IP %MVN_REPO_IP%
CALL LOG_VAR MVN_REPO_URI %MVN_REPO_URI%
CALL LOG_VAR SYS_DIR %SYS_DIR%
CALL LOG_VAR TMPL_DIR %TMPL_DIR%
CALL LOG_VAR USER %USER%

CALL LOG_VAR ART %ART%
CALL LOG_VAR GRP %GRP%
CALL LOG_VAR REPO_URL %REPO_URL%
CALL LOG_VAR REPO_PORT %REPO_PORT%
CALL LOG_VAR VER %VER%

REM DOCKER_BUILDKIT=1 ^
docker  build ^
        --build-arg CONT_DIR=%CONT_DIR% ^
        --build-arg HOST_DIR=%HOST_DIR% ^
        --build-arg SYS_DIR=%SYS_DIR% ^
        --build-arg TMPL_DIR=%TMPL_DIR% ^
        --build-arg ART=%ART% ^
        --build-arg GRP=%GRP% ^
        --build-arg REPO_URL=%REPO_URL% ^
        --build-arg REPO_PORT=%REPO_PORT% ^
        --build-arg VER=%VER% ^
        --add-host=%MVN_REPO_URI%:%MVN_REPO_IP% ^
        -f %DCKR_URI% ^
        -t %IMG% ^
        .

CALL LOG_VAR ERRORLEVEL %ERRORLEVEL%

IF %ERRORLEVEL% EQU 0 (
  CALL LOG_CMD "Please run pGO to create and run the container"
) else (
  CALL LOG_ERR "Unable to build image"
)

CALL LOG_EXIT pBUILD

