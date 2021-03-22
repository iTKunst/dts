@echo off
CALL LOG_ENTER tENV

call sENV
if exist project\pENV (
  call project\pENV
)

SET "PROJ_LABEL=%SYS_NAME%"
SET "PROJ_NET=%SYS_NET%"

SET "PROJ_CONT=%TER_CONT%"
SET "PROJ_CONT_DATA_DIR=%TER_CONT_DATA_DIR%"
SET "PROJ_CONT_DIR=%TER_CONT_DIR%"
SET "PROJ_CONT_HOME_DIR=%TER_CONT_HOME_DIR%"
SET "PROJ_HOST_DIR=%TER_HOST_DIR%"
SET "PROJ_IMG=%TER_IMG%"
SET "PROJ_PORT_INT=%TER_PORT_INT%"
SET "PROJ_USER=%TER_USER%%"
SET "PROJ_VOL_DIR=%TER_VOL_DIR%"

CALL LOG_EXIT pENV

