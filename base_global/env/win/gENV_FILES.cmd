@echo off


call LOG_ENTER gENV_FILES

CALL gENV_CATS
CALL gENV_NAMES
CALL gENV_TKNS

SET "API_JSON=%API%%DOT%%JSON%"
SET "DCKR_FILE=%DCKR%%FILE%"

call LOG_EXIT gENV_FILES
