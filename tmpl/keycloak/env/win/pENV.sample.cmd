@echo off


CALL LOG_ENTER pENV

CALL tENV

SET "PROJ_HOST=%KEY_HOST%"
SET "PROJ_PASSWORD=%KEY_PASSWORD%"
SET "PROJ_PORT_EXT=%KEY_PORT_EXT%"
SET "PROJ_USER=%KEY_USER%"

SET "PROJ_DB_ADDR=%KEY_DB_ADDR%"
SET "PROJ_DB_DATABASE=%KEY_DB_DATABASE%"
SET "PROJ_DB_PASSWORD=%KEY_DB_PASSWORD%"
SET "PROJ_DB_USER=%KEY_DB_USER%"
SET "PROJ_DB_VENDOR=%KEY_DB_VENDOR%"
SET "PROJ_DBG=%KEY_DBG%"
SET "PROJ_DBG_PORT=%KEY_DBG_PORT%"
SET "PROJ_IMPORT=%KEY_IMPORT%"
SET "PROJ_LOG_LEVEL=%KEY_LOG_LEVEL%"
SET "PROJ_PORT_EXT_ADMIN=%KEY_PORT_EXT_ADMIN%"
SET "PROJ_PROXY_FORWARD=%KEY_PROXY_FORWARD%"
SET "PROJ_ROOT_LOG_LEVEL=%KEY_ROOT_LOG_LEVEL%"

CALL LOG_EXIT pENV_MOD

