@echo off


CALL LOG_ENTER pENV

CALL tENV

SET "PROJ_HOST=%PG_ADMIN_HOST%"
SET "PROJ_PASSWORD=%PG_ADMIN_PASSWORD%"
SET "PROJ_PORT_EXT=%PG_ADMIN_PORT_EXT%"
SET "PROJ_USER=%PG_ADMIN_USER%"

CALL LOG_EXIT pENV

