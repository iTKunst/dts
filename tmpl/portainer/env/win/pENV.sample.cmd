@echo off


CALL LOG_ENTER tENV

CALL sENV

SET "PROJ_HOST=%PORT_HOST%"
SET "PROJ_PASSWORD=%PORT_PASSWORD%"
SET "PROJ_PORT_EXT=%PORT_PORT_EXT%"
SET "PROJ_USER=%PORT_USER%"

CALL LOG_EXIT pENV_MOD

