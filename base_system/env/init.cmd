@echo off


call LOG_ENTER \%DIR_SYS%\env\init

xcopy /q /y .\%DIR_SYS%\env\win\*.cmd .\bin >NUL

call LOG_EXIT \%DIR_SYS%\env\init
