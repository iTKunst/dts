@echo off


CALL .\%DIR_BNDL%\log\win\LOG_LOAD \%DIR_BNDL%%MISC_DIR%\init

xcopy /q /y .\%DIR_BNDL%%MISC_DIR%\win\*.cmd .\bin > NUL

CALL .\%DIR_BNDL%\log\win\LOG_UNLOAD \%DIR_BNDL%%MISC_DIR%\init
