@echo off



CALL LOG_LOAD %DIR_BASE%%DIR_SLASH%%FILE_INIT%


CALL %DIR_BNDL%%DIR_SLASH%%FILE_INIT%
CALL %DIR_GLBL%%DIR_SLASH%%FILE_INIT%

xcopy /q /y %DIR_PROJ%%DIR_SLASH%%FILE_INIT% . >NUL


CALL LOG_UNLOAD %DIR_BASE%%DIR_SLASH%%FILE_INIT%