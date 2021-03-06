@echo off
CALL settings


call LOG_ENTER pINSTALL

CALL pENV


CALL LOG_VAR DIR_SYS %DIR_SYS%
CALL LOG_VAR PROJ_NAME %PROJ_NAME%
CALL LOG_VAR SYS_NAME %SYS_NAME%


SET "SOURCE=./%DIR_SYS%/soap/%PROJ_NAME%"
SET "TARGET=code/src-gen"

CALL LOG_VAR TARGET %TARGET%
CALL LOG_VAR SOURCE %SOURCE%

mkdir -p %TARGET%
xcopy /x /y %SOURCE%/* %TARGET%


SET "SOURCE=./%DIR_SYS%/api/%PROJ_NAME%"
SET "TARGET=code/src-gen/swag"

CALL LOG_VAR TARGET %TARGET%
CALL LOG_VAR SOURCE %SOURCE%

mkdir -p %TARGET%
xcopy /x /y %SOURCE%/* %TARGET%


call LOG_EXIT pINSTALL

