@echo off
CALL settings


call LOG_ENTER cSTOP

SET DC=./System/docker-compose/docker-compose.yml
docker-compose -f %DC% stop

call LOG_EXIT cSTOP
