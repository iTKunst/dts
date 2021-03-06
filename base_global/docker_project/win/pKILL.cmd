@echo off
CALL settings


call LOG_ENTER pKILL

pSTOP
pDEL

call LOG_EXIT pKILL
