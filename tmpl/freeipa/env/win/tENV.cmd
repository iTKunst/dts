@echo off


call LOG_ENTER pENV

call sENV
if exist project\pENV_MOD (
  call project\pENV_MOD
)

SET "PROJ_LABEL=%SYS_NAME%"
SET "PROJ_NET=%SYS_NET%"

SET "PROJ_CONT=%FREE_CONT%"
SET "PROJ_CONT_DATA_DIR=%FREE_CONT_DATA_DIR%"
SET "PROJ_CONT_DIR=%FREE_CONT_DIR%"
SET "PROJ_CONT_HOME_DIR=%FREE_CONT_HOME_DIR%"
SET "PROJ_HOST_DIR=%FREE_HOST_DIR%"
SET "PROJ_PORT_INT=%FREE_PORT_INT%"
SET "PROJ_VOL=%FREE_VOL%"
SET "PROJ_VOL_DIR=%FREE_VOL_DIR%"


call LOG_EXIT pENV