@echo off


CALL LOG_ENTER pENV_MOD

CALL sENV

SET "PROJ_HOST=%SWAG_HOST%"
SET "PROJ_PASSWORD=%SWAG_PASSWORD%"
SET "PROJ_PORT_EXT=%SWAG_PORT_EXT%"
SET "PROJ_USER=%SWAG_USER%"

SET "PROJ_API_URI=%SWAG_UI_HOST%%COLON%%SWAG_UI_PORT_EXT%"
SET "PROJ_ART=%SWAG_ART%"
SET "PROJ_FILE=%SWAG_FILE%"
SET "PROJ_GEN_HOST=%SWAG_UI_CONT%"
SET "PROJ_GRP=%SWAG_GRP%"
SET "PROJ_PKG=%SWAG_PKG%"
SET "PROJ_REPO=%MVN_REPO_URI%"
SET "PROJ_VER=%SWAG_VER%"

CALL LOG_EXIT pENV_MOD
