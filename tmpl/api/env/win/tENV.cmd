@echo off


CALL LOG_ENTER pENV

call sENV
if exist project%DIR_SLASH%pENV_MOD (
  call project\pENV
)


SET "PROJ_LABEL=%SYS_NAME%"
SET "PROJ_NET=%SYS_NET%"

SET "PROJ_CONT=%API_CONT%"
SET "PROJ_CONT_DIR=%API_CONT_DIR%"
SET "PROJ_CONT_MNT_DIR=%API_CONT_MNT_DIR%"
SET "PROJ_HOST_DIR=%API_HOST_DIR%"
SET "PROJ_HOST_MNT_DIR=%API_HOST_MNT_DIR%"
SET "PROJ_IMG=%API_IMG%"
SET "PROJ_PORT_INT=%API_PORT_INT%"
SET "PROJ_VOL=%API_VOL%"

SET "PROJ_PORT_INT_DBG=%API_PORT_INT_DBG%"

CALL LOG_EXIT tENV
