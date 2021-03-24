@echo off
CALL settings


CALL %DIR_BIN%%DIR_SLASH%LOG_ENTER sREGISTER


CALL sENV

SET "REPO_GRP=https://%DCKR_REPO_GRP%
SET "REPO_HST=https://%DCKR_REPO_HST%

CALL LOG_VAR REPO_GRP %REPO_GRP%
CALL LOG_VAR REPO_HST %REPO_HST%

MIRRORS=" \"registry-mirrors\": [ \"https://%REPO_GRP%\" ] "
INSECURE=" \"insecure-registries\": [ \"https://%REPO_GRP%\", \"https://%REPO_HST%\" ] "
DBG=" \"debug\": true "
EXP=" \"experimental\": false "

echo "{ %MIRRORS%, %INSECURE%, %DBG%, %EXP% }" > daemon.json

CALL LOG_CMD "Place daemon.json in /etc/docker and restart docker"


CALL LOG_EXIT sREGISTER
