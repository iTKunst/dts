@echo off


CALL LOG_ENTER pENV_MOD

CALL sENV

SET "PROJ_HOST=%RHCOS_HOST%"
SET "PROJ_PASSWORD=%RHCOS_PASSWORD%"
SET "PROJ_PORT_EXT=%RHCOS_PORT_EXT%"
SET "PROJ_USER=%RHCOS_USER%"

CALL LOG_EXIT pENV_MOD
