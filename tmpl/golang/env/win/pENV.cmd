@echo off


call %DIR_BIN%%DIR_SLASH%LOG_ENTER pENV

call sENV
if exist project\pENV (
  call project\pENV
)

SET "PROJ_LABEL=%SYS_NAME%"
SET "PROJ_NET=%SYS_NET%"

SET "PROJ_CONT=%GO_CONT%"
SET "PROJ_CONT_DATA_DIR=%GO_CONT_DATA_DIR%"
SET "PROJ_CONT_DIR=%GO_CONT_DIR%"
SET "PROJ_CONT_HOME_DIR=%GO_CONT_HOME_DIR%"
SET "PROJ_HOST_DIR=%GO_HOST_DIR%"
SET "PROJ_IMG=%GO_IMG%"
SET "PROJ_PORT_INT=%GO_PORT_INT%"
SET "PROJ_USER=%GO_USER%"
SET "PROJ_VOL=%GO_VOL%"
SET "PROJ_VOL_DIR=%GO_VOL_DIR%"

CALL LOG_EXIT tENV
