@echo off


call %DIR_BIN%%DIR_SLASH%LOG_ENTER pUPDATE_REPO

SET sDIR=%1

call LOG_VAR DIR %sDIR%

cd %sDIR%
git pull
cd ..

call LOG_EXIT pUPDATE_REPO

