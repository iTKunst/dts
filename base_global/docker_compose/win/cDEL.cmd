@echo off
CALL settings


call LOG_ENTER cCHECK

SET DC=./%DIR_SYS%/docker-compose/docker-compose.yml
docker-compose -f %DC% down

call LOG_EXIT cCHECK
