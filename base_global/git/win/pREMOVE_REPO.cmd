@echo off


call LOG_ENTER pREMOVE_REPO

SET sDIR=%1

call LOG_VAR sDIR %sDIR%

RD /S /Q %sDIR%

call LOG_EXIT pREMOVE_REPO
