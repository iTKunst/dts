@echo off


CALL %DIR_BNDL%\log\win\LOG_LOAD \%DIR_DTS%\init

CALL %DIR_BASE%\init
CALL %DIR_TMPL%\init

CALL %DIR_BNDL%\log\win\LOG_UNLOAD \%DIR_DTS%\init