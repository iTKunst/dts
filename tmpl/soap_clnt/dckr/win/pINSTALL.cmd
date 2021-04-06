@echo off
CALL settings


call %DIR_BIN%%DIR_SLASH%LOG_ENTER pINSTALL

CALL tENV


SET "SRC=target/generated-sources/axis2"
CALL LOG_VAR SRC %SRC%

SET "TRG=$DIR_SOAP_CLNT$DIR_SLASH$PROJ_NAME"
CALL LOG_VAR TRG %TRG%

mkdir -p %TRG%
xcopy /x /y %SRC%/* %TRG%


call LOG_EXIT pINSTALL

