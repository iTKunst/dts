@echo off


rem echo %DIR_BNDL%%DIR_SLASH%%FILE_INIT% [ENTER]

CALL %DIR_BNDL%%DIR_SLASH%env%DIR_SLASH%%FILE_INIT%
CALL %DIR_BNDL%%DIR_SLASH%git%DIR_SLASH%%FILE_INIT%
CALL %DIR_BNDL%%DIR_SLASH%log%DIR_SLASH%%FILE_INIT%
CALL %DIR_BNDL%%DIR_SLASH%misc%DIR_SLASH%%FILE_INIT%

rem echo %DIR_BNDL%%DIR_SLASH%%FILE_INIT% [EXIT]