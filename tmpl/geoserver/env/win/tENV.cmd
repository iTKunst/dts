@echo off


CALL LOG_ENTER tENV

call sENV
if exist project\pENV (
  call project\pENV
)

SET "PROJ_LABEL=%SYS_NAME%"
SET "PROJ_NET=%SYS_NET%"

SET "PROJ_CONT=%GEO_CONT%"
SET "PROJ_CONT_DATA_DIR=%GEO_CONT_DATA_DIR%"
SET "PROJ_CONT_DIR=%GEO_CONT_DIR%"
SET "PROJ_CONT_HOME_DIR=%GEO_CONT_HOME_DIR%"
SET "PROJ_HOST_DIR=%GEO_HOST_DIR%"
SET "PROJ_IMG=%GEO_IMG%"
SET "PROJ_PORT_INT=%GEO_PORT_INT%"
SET "PROJ_VOL=%GEO_VOL%"
SET "PROJ_VOL_DIR=%GEO_VOL_DIR%"

call LOG_EXIT pENV
