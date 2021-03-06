@echo off
CALL settings


call LOG_ENTER gKILL

gSTOP
gDEL

call LOG_EXIT gKILL
