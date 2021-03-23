@echo off


CALL LOG_ENTER tENV

call sENV
if exist project\pENV (
  call project\pENV
)

SET "PROJ_LABEL=%SYS_NAME%"
SET "PROJ_NET=%SYS_NET%"

SET "PROJ_CONT=%GRDL_CONT%"
SET "PROJ_CONT_DATA_DIR=%GRDL_CONT_DATA_DIR%"
SET "PROJ_CONT_DIR=%GRDL_CONT_DIR%"
SET "PROJ_CONT_HOME_DIR=%GRDL_CONT_HOME_DIR%"
SET "PROJ_HOST_DIR=%GRDL_HOST_DIR%"
SET "PROJ_IMG=%GRDL_IMG%"
SET "PROJ_PORT_INT=%GRDL_PORT_INT%"
SET "PROJ_VOL=%GRDL_VOL%"
SET "PROJ_VOL_DIR=%GRDL_VOL_DIR%"

CALL LOG_EXIT tENV
