@echo off


CALL LOG_ENTER pENV

CALL tENV

SET "PROJ_HOST=%REACT_HOST%"
SET "PROJ_PASSWORD=%REACT_PASSWORD%"
SET "PROJ_PORT_EXT=%REACT_PORT_EXT%"
SET "PROJ_USER=%REACT_USER%"

CALL LOG_EXIT pENV

