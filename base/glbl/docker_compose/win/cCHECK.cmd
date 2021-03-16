@echo off
CALL settings
CALL LOG


call %DIR_BIN%%DIR_SLASH%LOG_ENTER cCHECK

SET DC=./%DIR_SYS%/docker-compose/docker-compose.yml
docker-compose -f %DC% config

call %DIR_BIN%%DIR_SLASH%LOG_ENTER cCHECK
