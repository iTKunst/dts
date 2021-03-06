@echo off


CALL LOG_ENTER pENV

CALL tENV

SET "PROJ_HOST=%SRVR_HOST%"
SET "PROJ_PASSWORD=%SRVR_PASSWORD%"
SET "PROJ_PORT_EXT=%SRVR_PORT_EXT%"
SET "PROJ_USER=%SRVR_USER%"

SET "PROJ_ART=%SOAP_ART%"
SET "PROJ_CERT_DIR=%SOAP_CERT_DIR%"
SET "PROJ_FILE=%SOAP_FILE%"
SET "PROJ_GRP=%SOAP_GRP%"
SET "PROJ_PKG=%SOAP_PKG%"
SET "PROJ_REPO_URL=%NEXUS3_HOST%"
SET "PROJ_REPO_PORT=%NEXUS3_PORT_EXT%"
SET "PROJ_VER=%SOAP_VER%"


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

CALL LOG_EXIT pENV

