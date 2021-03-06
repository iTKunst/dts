@echo off


CALL LOG_ENTER pENV

call sENV
if exist project\pENV_MOD (
  call project\pENV_MOD
)

SET "PROJ_LABEL=%SYS_NAME%"
SET "PROJ_NET=%SYS_NET%"

SET "PROJ_CONT=%SRVR2_CONT%"
SET "PROJ_CONT_DIR=%SRVR2_CONT_DIR%"
SET "PROJ_CONT_MNT_DIR=%SRVR2_CONT_MNT_DIR%"
SET "PROJ_HOST_DIR=%SRVR2_HOST_DIR%"
SET "PROJ_HOST_MNT_DIR=%SRVR2_HOST_MNT_DIR%"
SET "PROJ_IMG=%SRVR2_IMG%"
SET "PROJ_PORT_INT=%SRVR2_PORT_INT%"
SET "PROJ_VOL=%SRVR2_VOL%"

SET "PROJ_PORT_INT_DBG=%SRVR2_PORT_INT_DBG%"

call LOG_EXIT pENV
