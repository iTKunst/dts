@echo off


CALL LOG_ENTER tENV

call sENV
if exist project\pENV (
  call project\pENV
)

SET "PROJ_LABEL=%SYS_NAME%"
SET "PROJ_NET=%SYS_NET%"

SET "PROJ_CONT=%MS_CONT%"
SET "PROJ_CONT_DATA_DIR=%MS_CONT_DATA_DIR%"
SET "PROJ_CONT_DIR=%MS_CONT_DIR%"
SET "PROJ_CONT_HOME_DIR=%MS_CONT_HOME_DIR%"
SET "PROJ_HOST_DIR=%MS_HOST_DIR%"
SET "PROJ_IMG=%MS_IMG%"
SET "PROJ_PORT_INT=%MS_PORT_INT%"
SET "PROJ_VOL=%MS_VOL%"
SET "PROJ_VOL_DIR=%MS_VOL_DIR%"


CALL LOG_EXIT tENV
