@echo off


CALL LOG_ENTER pENV_MOD

CALL sENV

SET "PROJ_HOST=%SOAP_HOST%"
SET "PROJ_PASSWORD=%SOAP_PASSWORD%"
SET "PROJ_PORT_EXT=%SOAP_PORT_EXT%"
SET "PROJ_USER=%SOAP_USER%"

SET "PROJ_ART=%SOAP_ART%"
SET "PROJ_CERT_DIR=%SOAP_CERT_DIR%"
SET "PROJ_FILE=%SOAP_FILE%"
SET "PROJ_GRP=%SOAP_GRP%"
SET "PROJ_PKG=%SOAP_PKG%"
SET "PROJ_REPO_URL=%NEXUS3_HOST%"
SET "PROJ_REPO_PORT=%NEXUS3_PORT_EXT%"
SET "PROJ_VER=%SOAP_VER%"

CALL LOG_EXIT pENV_MOD
