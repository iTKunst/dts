@echo off


:: echo settings [LOADED]


CALL settings_uri


REM DOCKER PASSWORD
SET "DCKR_PWD=pjldooley@gmail.com"

REM DOCKER TAG
SET "DCKR_TAG=2"

REM DOCKER USER
SET "DCKR_USR=taghr-dooleyp"

REM PROJECT MODE (a-attached, d-detached, it-interactive)
SET "PROJ_MODE=d"

REM PROJECT NAME
SET "PROJ_NAME="

REM SYSTEM NAME
SET "SYS_NAME="

REM TEMPLATE NAME
SET "TMPL_NAME="


REM LOGGING - MAIN
SET "LOG_ON=1"

SET "LOG_ENTER_ON=0"
SET "LOG_EXIT_ON=0"
SET "LOG_LOAD_ON=0"
SET "LOG_UNLOAD_ON=0"
SET "LOG_VAR_ON=0"

REM DIRECTORIES
SET "DIR_DTS=dts"

REM LOGGING - SUPPLEMENTAL
SET "LOG_CLONE_ERR_ON=1"
SET "LOG_CMD_ON=1"
SET "LOG_DBG_ON=1"
SET "LOG_DIR_ERR_ON=1"
SET "LOG_DUP_ON=1"
SET "LOG_ERR_ON=1"
SET "LOG_FILE_ERR_ON=1"
SET "LOG_INFO_ON=1"
SET "LOG_INVALID_ON=1"
SET "LOG_WARN_ON=1"

REM LOGGING - GIT
SET "LOG_GIT_ON=0"


:: echo settings [UNLOADED]
