@echo off


CALL LOG_ENTER pENV_MOD

CALL sENV

SET "PROJ_HOST=%SWAG_UI_HOST%"
SET "PROJ_PASSWORD=%SWAG_UI_PASSWORD%"
SET "PROJ_PORT_EXT=%SWAG_UI_PORT_EXT%"
SET "PROJ_USER=%SWAG_UI_USER%"

SET "PROJ_JSON=%SWAG_UI_JSON%"

CALL LOG_EXIT pENV_MOD
