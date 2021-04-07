@echo off
CALL settings
CALL tENV

call %DIR_BIN%%DIR_SLASH%LOG_ENTER pBUILD



call LOG_VAR BUILD_DCKR %BUILD_DCKR%
SET "CONT_DIR=%PROJ_CONT_DIR%"
call LOG_VAR CONT_DIR %CONT_DIR%
SET "HOST_DIR=%PROJ_HOST_DIR%"
call LOG_VAR HOST_DIR %HOST_DIR%
SET "IMG=%PROJ_IMG%"
call LOG_VAR IMG %IMG%
call LOG_VAR SYS %SYS%
call LOG_VAR TMPL %TMPL%
SET "USER=%PROJ_USER%"
call LOG_VAR USER %USER%


SET "ART=%PROJ_ART%"
call LOG_VAR ART %ART%
call LOG_VAR DIR_CERT %DIR_CERT%
SET "FILE=%PROJ_FILE%"
call LOG_VAR FILE %FILE%
SET "GRP=%PROJ_GRP%"
call LOG_VAR GRP %GRP%
SET "REPO_HOST=%PROJ_REPO_HOST%"
call LOG_VAR REPO_HOST %REPO_HOST%
SET "REPO_IP=%PROJ_REPO_IP%"
call LOG_VAR REPO_IP %REPO_IP%
SET "REPO_PORT_EXT=%PROJ_REPO_PORT_EXT%"
call LOG_VAR REPO_PORT_EXT %REPO_PORT_EXT%
call LOG_VAR TMPL_NAME %TMPL_NAME%
SET "VER=%PROJ_VER%"
call LOG_VAR VER %VER%


REM DOCKER_BUILDKIT=1 ^
docker  build ^
        --build-arg CERT_DIR=%CERT_DIR% ^
        --build-arg CONT_DIR=%CONT_DIR% ^
        --build-arg HOST_CFG_DIR=%HOST_CFG_DIR% ^
        --build-arg HOST_DIR=%HOST_DIR% ^
        --build-arg SYS_DIR=%DIR_SYS% ^
        --build-arg TMPL_DIR=%TMPL_DIR% ^
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

call LOG_EXIT pBUILD

