@echo off


CALL LOG_ENTER pENV

call sENV
if exist project\pENV (
  call project\pENV
)

SET "PROJ_LABEL=%SYS_NAME%"
SET "PROJ_NET=%SYS_NET%"

SET "PROJ_CONT=%NODE_CONT%"
SET "PROJ_CONT_DATA_DIR=%NODE_CONT_DATA_DIR%"
SET "PROJ_CONT_DIR=%NODE_CONT_DIR%"
SET "PROJ_CONT_HOME_DIR=%NODE_CONT_HOME_DIR%"
SET "PROJ_HOST_DIR=%NODE_HOST_DIR%"
SET "PROJ_IMG=%NODE_IMG%"
SET "PROJ_PORT_INT=%NODE_PORT_INT%"
SET "PROJ_VOL=%NODE_VOL%"
SET "PROJ_VOL_DIR=%NODE_VOL_DIR%"

CALL LOG_EXIT pENV

