@echo off


REM echo bENV_DIRS [ENTER]

CALL settings
CALL bin/bENV_NAMES
CALL bin/bENV_TKNS


SET "BASE_DIR=%DIR_SLASH%%BASE%"
SET "BNDL_DIR=%DIR_SLASH%%BNDL%"
SET "BIN_DIR=%BIN%"
SET "DCKR_DIR=%DIR_SLASH%%DCKR%"
SET "ENV_DIR=%DIR_SLASH%%ENV%"
SET "GIT_DIR=%DIR_SLASH%%GIT%"
SET "GLBL_DIR=%DIR_SLASH%%GLBL%"
SET "LOG_DIR=%DIR_SLASH%%LOG%"
SET "MISC_DIR=%DIR_SLASH%%MISC%"
SET "OS_DIR=%DIR_SLASH%%OS%"
SET "SYS_DIR=%DIR_SLASH%%SYS%"
SET "TMPL_DIR=%DIR_SLASH%%TMPL%"
SET "TMPL_CURR_DIR=%DIR_SLASH%%TMPL_NAME%"

REM echo bENV_DIRS [EXIT]
