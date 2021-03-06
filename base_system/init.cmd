@echo off


call LOG_ENTER \%DIR_SYS%\init

CALL .\%DIR_SYS%\env\init

call LOG_EXIT \%DIR_SYS%\init