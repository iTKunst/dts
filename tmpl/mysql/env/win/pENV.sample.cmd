@echo off


CALL LOG_ENTER tENV

CALL sENV

SET "PROJ_HOST=%MS_HOST%"
SET "PROJ_PASSWORD=%MS_PASSWORD%"
SET "PROJ_PORT_EXT=%MS_PORT_EXT%"
SET "PROJ_USER=%MS_USER%"

CALL LOG_EXIT pENV_MOD

