@echo off


CALL LOG_ENTER tENV

CALL sENV

SET "PROJ_HOST=%GO_HOST%"
SET "PROJ_PASSWORD=%GO_PASSWORD%"
SET "PROJ_PORT_EXT=%GO_PORT_EXT%"
SET "PROJ_USER=%GO_USER%"

CALL LOG_EXIT pENV_MOD

