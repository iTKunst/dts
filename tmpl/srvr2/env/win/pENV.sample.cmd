@echo off


CALL LOG_ENTER tENV

CALL sENV

SET "PROJ_HOST=%SRVR2_HOST%"
SET "PROJ_PASSWORD=%SRVR2_PASSWORD%"
SET "PROJ_PORT_EXT=%SRVR2_PORT_EXT%"
SET "PROJ_USER=%SRVR2_USER%"

SET "PROJ_ART=%SOAP_ART%"
SET "PROJ_GRP=%SOAP_GRP%"
SET "PROJ_REPO_URL=%NEXUS3_HOST%"
SET "PROJ_REPO_PORT=%NEXUS3_PORT_EXT%"
SET "PROJ_VER=%SOAP_VER%"

SET "PROJ_DB_ADDR=%PG_ADDR%"
SET "PROJ_DB_DATABASE=%PG_DATABASE%"
SET "PROJ_DB_PASSWORD=%PG_PASSWORD%"
SET "PROJ_DB_USER=%PG_USER%"
SET "PROJ_DB_VENDOR=%PG_VENDOR%"


CALL LOG_EXIT pENV_MOD

