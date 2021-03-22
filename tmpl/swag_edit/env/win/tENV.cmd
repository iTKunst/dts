@echo off


CALL LOG_ENTER pENV

call sENV
if exist project\pENV (
  call project\pENV
)

SET "PROJ_LABEL=%SYS_NAME%"
SET "PROJ_NET=%SYS_NET%"

SET "PROJ_CONT=%SWAG_ED_CONT%"
SET "PROJ_CONT_DATA_DIR=%SWAG_ED_CONT_DATA_DIR%"
SET "PROJ_CONT_DIR=%SWAG_ED_CONT_DIR%"
SET "PROJ_CONT_HOME_DIR=%SWAG_ED_CONT_HOME_DIR%"
SET "PROJ_HOST_DIR=%SWAG_ED_HOST_DIR%"
SET "PROJ_IMG=%SWAG_ED_IMG%"
SET "PROJ_PORT_INT=%SWAG_ED_PORT_INT%"
SET "PROJ_VOL=%SWAG_ED_VOL%"
SET "PROJ_VOL_DIR=%SWAG_ED_VOL_DIR%"


CALL LOG_EXIT pENV

