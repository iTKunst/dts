@echo off


CALL LOG_ENTER pENV

call sENV
if exist project\pENV_MOD (
  call project\pENV_MOD
)

SET "PROJ_LABEL=%SYS_NAME%"
SET "PROJ_NET=%SYS_NET%"

SET "PROJ_CONT=%MVN_CONT%"
SET "PROJ_CONT_DIR=%MVN_CONT_DIR%"
SET "PROJ_CONT_MNT_DIR=%MVN_CONT_MNT_DIR%"
SET "PROJ_HOST_DIR=%MVN_HOST_DIR%"
SET "PROJ_HOST_MNT_DIR=%MVN_HOST_MNT_DIR%"
SET "PROJ_IMG=%MVN_IMG%"
SET "PROJ_PORT_INT=%MVN_PORT_INT%"

SET "PROJ_CONT_CFG_DIR=%MVN_CONT_CFG_DIR%"
SET "PROJ_HOST_CFG_DIR=%MVN_HOST_CFG_DIR%"
SET "PROJ_PORT_INT_DBG=%MVN_PORT_INT_DBG%"


CALL LOG_EXIT pENV
