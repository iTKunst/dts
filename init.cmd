@echo off


CALL %DIR_BNDL%\log\win\LOG_LOAD \%DIR_DTS%\init

CALL %DIR_DTS%\env\init
CALL %DIR_DTS%\git\init
CALL %DIR_DTS%\log\init
CALL %DIR_DTS%\misc\init

CALL %DIR_BNDL%\log\win\LOG_UNLOAD \%DIR_DTS%\init