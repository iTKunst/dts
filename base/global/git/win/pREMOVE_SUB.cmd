@echo off


call LOG_ENTER pREMOVE_SUB

SET sDIR=%1

call LOG_VAR sDIR %sDIR%

git submodule deinit -f %sDIR%
if %ERRORLEVEL% NEQ 0 GOTO :ERR
)

rm -rf .git/modules/%sDIR%
if %ERRORLEVEL% NEQ 0 GOTO :ERR

git rm -f %sDIR%
if %ERRORLEVEL% NEQ 0 GOTO :ERR

GOTO :EOF

:ERR
call LOG_ERR Error removing submodule %DIR%

:EOF
call LOG_EXIT pREMOVE_SUB

