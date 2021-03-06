@echo off


CALL LOG_ENTER pGO

CALL project\pENV

SET "CONT=%PROJ_CONT%"
SET "CONT_DIR=%PROJ_CONT_DIR%"
SET "HOST=%PROJ_HOST%"
SET "HOST_DIR=%CD%%PROJ_HOST_DIR%"
SET "IMG=%PROJ_IMG%"
SET "LABEL=%PROJ_LABEL%"
SET "MODE=%PROJ_MODE%"
SET "NET=%PROJ_NET%"
SET "PASSWORD=%PROJ_PASSWORD%"
SET "PORT_EXT=%PROJ_PORT_EXT%"
SET "PORT_INT=%PROJ_PORT_INT%"
SET "USER=%PROJ_USER%"
SET "VOL=%PROJ_VOL%"
SET "VOL_DIR=%PROJ_VOL_DIR%"

SET "PORT_ADMIN_EXT=%PROJ_PORT_ADMIN_EXT"
SET "PORT_ADMIN_INT=%PROJ_PORT_ADMIN_INT"
SET "PORT_DBG_EXT=%PROJ_PORT_DBG_EXT"
SET "PORT_DBG_INT=%PROJ_PORT_DBG_INT"
SET "REG_VIRT=%PROJ_REG_VIRT"
SET "REG_DEV=%PROJ_REG_DEV"
SET "REG_PROD=%PROJ_REG_PROD"
SET "REG_REM=%PROJ_REG_REM"

call LOG_VAR CONT %CONT%
call LOG_VAR CONT_DIR %CONT_DIR%
call LOG_VAR HOST %HOST%
call LOG_VAR HOST_DIR %HOST_DIR%
call LOG_VAR IMG %IMG%
call LOG_VAR LABEL %LABEL%
call LOG_VAR MODE %MODE%
call LOG_VAR NET %NET%
call LOG_VAR PASSWORD %PASSWORD%
call LOG_VAR PORT_EXT %PORT_EXT%
call LOG_VAR PORT_INT %PORT_INT%
call LOG_VAR USER %USER%
call LOG_VAR VOL %VOL%
call LOG_VAR VOL_DIR %VOL_DIR%

log_var PORT_ADMIN_EXT %PORT_ADMIN_EXT%
log_var PORT_ADMIN_INT %PORT_ADMIN_INT%
log_var PORT_DBG_EXT %PORT_DBG_EXT%
log_var PORT_DBG_INT %PORT_DBG_INT%
log_var REG_VIRT %REG_VIRT%
log_var REG_DEV %REG_DEV%
log_var REG_PROD %REG_PROD%
log_var REG_REM %REG_REM%


docker run ^
       -%MODE% ^
       -p %HOST%:%PORT_EXT%:%PORT_INT% ^
       -p %HOST%:%PORT_ADMIN_EXT%:%PORT_ADMIN_INT% ^
       -p %HOST%:%PORT_DBG_EXT%:%PORT_DBG_INT% ^
       -v %VOL%:%CONT_DIR%:rw ^
       -w %CONT_DIR% ^
       -e insecure-registry=%REG_VIRT% ^
       -e insecure-registry=%REG_DEV% ^
       -e insecure-registry=%REG_PROD% ^
       -e insecure-registry=%REG_REM% ^
       --label=%LABEL% ^
       --name=%CONT% ^
       --network=%NET% ^
       %IMG%
       
call LOG_EXIT pGO

