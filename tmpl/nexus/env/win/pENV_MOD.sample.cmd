@echo off


CALL LOG_ENTER tENV

CALL sENV

SET "PROJ_HOST=%NEXUS_HOST%"
SET "PROJ_PASSWORD=%NEXUS_PASSWORD%"
SET "PROJ_PORT_EXT=%NEXUS_PORT_EXT%"
SET "PROJ_USER=%NEXUS_USER%"

SET "PROJ_CONT_PATH=%NEXUS_CONT_PATH%"
SET "PROJ_MAX_HEAP=%NEXUS_MAX_HEAP%"
SET "PROJ_MIN_HEAP=%NEXUS_MIN_HEAP%"
SET "PROJ_NEXUS_OPTS=%NEXUS_NEXUS_OPTS%"
SET "PROJ_LAUNCH_CONF=%NEXUS_LAUNCH_CONF%"

CALL LOG_EXIT pENV_MOD

