@echo off


CALL LOG_ENTER pENV

CALL tENV

SET "PROJ_HOST=%TER_HOST%"
SET "PROJ_PASSWORD=%TER_PASSWORD%"
SET "PROJ_PORT_EXT=%TER_PORT_EXT%"
SET "PROJ_USER=%TER_USER%"

CALL LOG_EXIT pENV

