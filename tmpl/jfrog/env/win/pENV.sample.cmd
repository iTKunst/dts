@echo off


CALL LOG_ENTER pENV_MOD

CALL sENV

SET "PROJ_HOST=%JFROG_HOST%"
SET "PROJ_PASSWORD=%JFROG_PASSWORD%"
SET "PROJ_PORT_EXT=%JFROG_PORT_EXT%"
SET "PROJ_USER=%JFROG_USER%"

SET "PROJ_PORT_EXT_ADMIN=%JFROG_PORT_EXT_ADMIN%"
SET "PROJ_PORT_EXT_DBG=%JFROG_PORT_EXT_DBG%"
SET "PROJ_REG_DEV=%JFROG_REG_DEV%"
SET "PROJ_REG_PROD=%JFROG_REG_PROD%"
SET "PROJ_REG_REM=%JFROG_REG_REM%"
SET "PROJ_REG_VIRT=%JFROG_REG_VIRT%"

CALL LOG_EXIT pENV_MOD
