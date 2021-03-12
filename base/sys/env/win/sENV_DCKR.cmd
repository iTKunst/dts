@echo off


CALL LOG_LOAD sENV_DCKR


REM DOCKER REPO GROUP
SET "DCKR_REPO_GRP=docker-repo-nexus.dev.ccg-gcc.gc.ca"

REM DOCKER REPO HOST
SET "DCKR_REPO_HST=docker-private-nexus.dev.ccg-gcc.gc.ca"

REM DOCKER USER
SET "DCKR_USR=taghr-dooleyp"

REM DOCKER PASSWORD
SET "DCKR_PWD=pjldooley@gmail.com"




CALL LOG_UNLOAD sENV_DCKR
