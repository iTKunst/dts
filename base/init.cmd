@echo off


CALL %DIR_BNDL%\log\win\LOG_LOAD \%DIR_BASE%\init

CALL %DIR_BASE%\env\init
CALL %DIR_BASE%\git\init
CALL %DIR_BASE%\log\init
CALL %DIR_BASE%\misc\init

CALL %DIR_BNDL%\log\win\LOG_UNLOAD \%DIR_BASE%\init