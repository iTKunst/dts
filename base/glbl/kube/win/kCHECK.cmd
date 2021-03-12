@echo off
CALL settings
CALL LOG


call LOG_ENTER cCHECK

SET DC=./%DIR_SYS%/docker-compose/docker-compose.yml
docker-compose -f %DC% config

call LOG_EXIT cCHECK
