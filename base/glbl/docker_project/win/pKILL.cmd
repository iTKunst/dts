@echo off
CALL settings


call %DIR_BIN%%DIR_SLASH%LOG_ENTER pKILL

pSTOP
pDEL

call %DIR_BIN%%DIR_SLASH%LOG_ENTER pKILL
