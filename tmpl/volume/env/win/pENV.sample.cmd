@echo off


CALL LOG_ENTER tENV

CALL sENV

SET "PROJ_HOST=%VOL_HOST%"
SET "PROJ_PASSWORD=%VOL_PASSWORD%"
SET "PROJ_PORT_EXT=%VOL_PORT_EXT%"
SET "PROJ_USER=%VOL_USER%"

CALL LOG_EXIT pENV_MOD

