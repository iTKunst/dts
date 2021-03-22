@echo off


CALL LOG_ENTER tENV

call sENV
if exist project\pENV (
  call project\pENV
)

SET "PROJ_LABEL=%SYS_NAME%"
SET "PROJ_NET=%SYS_NET%"

SET "PROJ_CONT=%KEY_CONT%"
SET "PROJ_CONT_DATA_DIR=%KEY_CONT_DATA_DIR%"
SET "PROJ_CONT_DIR=%KEY_CONT_DIR%"
SET "PROJ_CONT_HOME_DIR=%KEY_CONT_HOME_DIR%"
SET "PROJ_HOST_DIR=%KEY_HOST_DIR%"
SET "PROJ_IMG=%KEY_IMG%"
SET "PROJ_PORT_INT=%KEY_PORT_INT%"
SET "PROJ_VOL=%KEY_VOL%"
SET "PROJ_VOL_DIR=%KEY_VOL_DIR%"

SET "PROJ_PORT_INT_ADMIN=%KEY_PORT_INT_ADMIN%"

call LOG_EXIT pENV
