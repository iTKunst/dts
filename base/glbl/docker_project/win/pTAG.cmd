@echo off
CALL settings


call %DIR_BIN%%DIR_SLASH%LOG_ENTER pTAG


CALL project\pENV

IMG=%PROJ_IMG%
REPO=%DCKR_REPO_HST%
TAG=%DCKR_TAG%

SET "IMG=%PROJ_IMG%"
SET "REPO=%DCKR_REPO_HST%"
SET "TAG=%DCKR_TAG%"

call LOG_VAR IMG %IMG%
call LOG_VAR REPO %REPO%
call LOG_VAR TAG %TAG%

SET NAME=%REPO%/%IMG%:%TAG%
call LOG_VAR NAME %NAME%

docker tag %IMG% %NAME%

call LOG_VAR ERRORLEVEL %ERRORLEVEL%

IF %ERRORLEVEL% EQU 0 (
  call LOG_INFO "Tagged image"
) else (
  call LOG_ERR "Unable to tag image"
)


call %DIR_BIN%%DIR_SLASH%LOG_ENTER pTAG

