@echo off


CALL %DIR_BIN%%DIR_SLASH%LOG_ENTER pENV

CALL tENV

SET "PROJ_HOST=%WSDL_HOST%"
SET "PROJ_PASSWORD=%WSDL_PASSWORD%"
SET "PROJ_PORT_EXT=%WSDL_PORT_EXT%"
SET "PROJ_USER=%WSDL_USER%"

SET "PROJ_ART=%WSDL_ART%"
SET "PROJ_CERT_DIR=%WSDL_CERT_DIR%"
SET "PROJ_FILE=%WSDL_FILE%"
SET "PROJ_GRP=%WSDL_GRP%"
SET "PROJ_PKG=%WSDL_PKG%"
SET "PROJ_REPO_URL=%NEXUS3_HOST%"
SET "PROJ_REPO_PORT=%NEXUS3_PORT_EXT%"
SET "PROJ_VER=%WSDL_VER%"

CALL LOG_EXIT pENV
