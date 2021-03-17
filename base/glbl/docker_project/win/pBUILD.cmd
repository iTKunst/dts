@echo off
CALL settings

echo pBUILD [ENTER]

CALL project\pENV

rem call LOG_ENTER pBUILD

SET "CONT_DIR=%PROJ_CONT_DIR%"
SET "HOST_DIR=%PROJ_HOST_DIR%"
SET "IMG=%PROJ_IMG%"
SET "TMPL_DIR=%TMPL_CURR_DIR%"

rem call LOG_VAR CONT_DIR %CONT_DIR%
echo CONT_DIR is %CONT_DIR%
rem call LOG_VAR DCKR_URI %DCKR_URI%
echo DCKR_URI is %DCKR_URI%
rem call LOG_VAR HOST_DIR %HOST_DIR%
echo HOST_DIR is %HOST_DIR%
rem call LOG_VAR IMG %IMG%
echo IMG is %IMG%
rem call LOG_VAR SYS_DIR %SYS_DIR%
echo SYS_DIR is %SYS_DIR%
rem call LOG_VAR TMPL_DIR %TMPL_DIR%
echo TMPL_DIR is %TMPL_DIR%

docker  build ^
        --build-arg CONT_DIR=%CONT_DIR% ^
        --build-arg HOST_DIR=%HOST_DIR% ^
        --build-arg SYS_DIR=%SYS_DIR% ^
        --build-arg TMPL_DIR=%TMPL_DIR% ^
        -f %DCKR_URI% ^
        -t %IMG% ^
        .

rem call LOG_VAR ERRORLEVEL %ERRORLEVEL%

IF %ERRORLEVEL% EQU 0 (
  call LOG_CMD "Please run pGO to create and run the container"
) else (
  call LOG_ERR "Unable to build image"
)

rem call LOG_EXIT pBUILD
echo pBUILD [EXIT]

