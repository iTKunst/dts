@echo off


CALL LOG_ENTER pENV

CALL tENV

SET "PROJ_HOST=%MVN_HOST%"
SET "PROJ_PASSWORD=%MVN_PASSWORD%"
SET "PROJ_PORT_EXT=%MVN_PORT_EXT%"
SET "PROJ_USER=%MVN_USER%"

SET "PROJ_PORT_EXT_DBG=%MVN_PORT_EXT_DBG%"

CALL LOG_EXIT pENV_MOD

