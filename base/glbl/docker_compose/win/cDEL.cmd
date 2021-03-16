@echo off
CALL settings


call %DIR_BIN%%DIR_SLASH%LOG_ENTER cCHECK

SET DC=./%DIR_SYS%/docker-compose/docker-compose.yml
docker-compose -f %DC% down

call %DIR_BIN%%DIR_SLASH%LOG_ENTER cCHECK
