@echo off


call settings

call LOG_LOAD pBUILD

call pENV

SET "CONT_DIR=%PROJ_CONT_HOME_DIR%"
SET "IMG=%PROJ_IMG%"

call LOG_VAR CONT_DIR %CONT_DIR%
call LOG_VAR IMG %IMG%

REM Do nothing

call LOG_CMD Please run pGO to create and run the container


call LOG_UNLOAD pBUILD
