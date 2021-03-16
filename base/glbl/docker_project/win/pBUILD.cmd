@echo off
CALL settings

echo Hello

CALL project\pENV

call %DIR_BIN%%DIR_SLASH%LOG_ENTER pBUILD

SET "CONT_DIR=%PROJ_CONT_DIR%"
SET "HOST_DIR=%PROJ_HOST_DIR%"
SET "IMG=%PROJ_IMG%"

call LOG_VAR CONT_DIR %CONT_DIR%
call LOG_VAR DCKR_URI %DCKR_URI%
call LOG_VAR HOST_DIR %HOST_DIR%
call LOG_VAR IMG %IMG%
call LOG_VAR SYS_DIR %SYS_DIR%
call LOG_VAR TMPL_DIR %TMPL_DIR%

docker  build ^
        --build-arg CONT_DIR=%CONT_DIR% ^
        --build-arg HOST_DIR=%HOST_DIR% ^
        --build-arg SYS_DIR=%SYS_DIR% ^
        --build-arg TMPL_DIR=%TMPL_DIR% ^
        -f %DCKR_URI% ^
        -t %IMG% ^
        .

call LOG_VAR ERRORLEVEL %ERRORLEVEL%

IF %ERRORLEVEL% EQU 0 (
  call LOG_CMD "Please run pGO to create and run the container"
) else (
  call LOG_ERR "Unable to build image"
)

call %DIR_BIN%%DIR_SLASH%LOG_ENTER pBUILD

