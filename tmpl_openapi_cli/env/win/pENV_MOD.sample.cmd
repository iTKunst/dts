@echo off


CALL LOG_ENTER pENV_MOD

CALL sENV

SET "PROJ_HOST=%OA_CLI_HOST%"
SET "PROJ_PASSWORD=%OA_CLI_PASSWORD%"
SET "PROJ_PORT_EXT=%OA_CLI_PORT_EXT%"
SET "PROJ_USER=%OA_CLI_USER%"

CALL LOG_EXIT pENV_MOD

