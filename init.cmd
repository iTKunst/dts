@echo off

SET "BNDL=bundler"
SET "DOT=."
SET "DCKR=docker"
SET "ENV=env"
SET "EXT=sh"
SET "GIT=git"
SET "GLOBAL=global"
SET "LOG=log"
SET "MISC=misc"
SET "OS=linux"

SET "CMD_LOG=%SLASH%"LOG"%DOT%%EXT%"

SET "DIR_BNDL=%SLASH%%BNDL%"
SET "DIR_DCKR=%SLASH%%DCKR%"
SET "DIR_ENV=%SLASH%%ENV%"
SET "DIR_GIT=%SLASH%%GIT%"
SET "DIR_GLOBAL=%SLASH%%GLOBAL%"
SET "DIR_LOG=%SLASH%%LOG%"
SET "DIR_MISC=%SLASH%%MISC%"
SET "DIR_OS=%SLASH%%OS%"
SET "DIR_TMPL=cSLASH%%TMPL_NAME%"

CALL %BNDL_DIR%%DIR_ENV%%CMD_INIT%
CALL %BNDL_DIR%%DIR_LOG%%CMD_INIT%

CALL %BIN_DIR%/bENV

CALL LOG_LOAD %DIR_DTS%%CMD_INIT%

CALL %DIR_DTS%%DIR_BASE%%CMD_INIT%
CALL %DIR_DTS%%DIR_TEMPLATE%%CMD_INIT%

CALL LOG_LOAD %DIR_DTS%%CMD_INIT%