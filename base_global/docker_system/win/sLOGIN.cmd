@echo off
CALL settings


CALL LOG_ENTER sLOGIN


CALL sENV

SET "REPO_GRP=https://%DCKR_REPO_GRP%
SET "REPO_HST=https://%DCKR_REPO_HST%
SET "USER=%NXS_USR%
SET "PASS=%NXS_PWD%

CALL LOG_VAR REPO_GRP %REPO_GRP%
CALL LOG_VAR REPO_HST %REPO_HST%
CALL LOG_VAR USER %USER%
CALL LOG_VAR PASS %PASS%

echo %PASS%>pass.txt

cat pass.txt | docker login -u %USER% --password-stdin %REPO_GRP%
cat pass.txt | docker login -u %USER% --password-stdin %REPO_HST%

CALL LOG_CMD Please run sREGISTER to setup your docker repos


CALL LOG_EXIT sLOGIN
