@echo off


call LOG_LOAD pVIEW

call pENV

SET "NET=%PROJ_NET%"

call LOG_VAR NET %NET%

docker network ls -f "name=%NET%"


call LOG_UNLOAD pVIEW
