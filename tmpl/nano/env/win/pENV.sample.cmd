@echo off


CALL LOG_ENTER pENV

CALL tENV

SET "PROJ_HOST=%NANO_HOST%"
SET "PROJ_PASSWORD=%NANO_PASSWORD%"
SET "PROJ_PORT_EXT=%NANO_PORT_EXT%"
SET "PROJ_USER=%NANO_USER%"

CALL LOG_EXIT pENV_MOD

