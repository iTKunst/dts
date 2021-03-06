@echo off


call LOG_LOAD pKILL

call pENV

SET "NET=%PROJ_NET%"

call LOG_VAR NET %NET%

docker network rm %NET%


call LOG_UNLOAD pKILL
