@echo off
CALL settings


call LOG_ENTER cRUN

SET DC=./%DIR_SYS%/docker-compose/docker-compose.yml
docker-compose -f %DC% up --remove-orphans

call LOG_EXIT cRUN
