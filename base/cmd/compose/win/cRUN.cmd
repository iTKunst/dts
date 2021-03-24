@echo off
CALL settings


call %DIR_BIN%%DIR_SLASH%LOG_ENTER cRUN

SET DC=./%DIR_SYS%/docker-compose/docker-compose.yml
docker-compose -f %DC% up --remove-orphans

call %DIR_BIN%%DIR_SLASH%LOG_ENTER cRUN
