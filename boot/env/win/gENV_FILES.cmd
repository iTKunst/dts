@echo off


rem call %DIR_BIN%%DIR_SLASH%LOG_ENTER gENV_FILES
echo gENV_FILES [ENTER]

CALL gENV_CATS
CALL gENV_NAMES
CALL gENV_TKNS

SET "API_JSON_FILE=%API%%DOT%%JSON%"
SET "DCKR_FILE=%DCKR%%FILE%"

rem call LOG_EXIT gENV_FILES
echo gENV_FILES [EXIT]