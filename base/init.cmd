@echo off


CALL %DIR_BNDL%\log\win\LOG_LOAD \%DIR_BASE%\init

CALL %DIR_BNDL%\init
CALL %DIR_GLBL%\init
CALL %DIR_PROJ%\init
CALL %DIR_SYS%\init

CALL %DIR_BNDL%\log\win\LOG_UNLOAD \%DIR_BASE%\init