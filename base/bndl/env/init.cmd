@echo off


CALL .\%DIR_BNDL%\log\win\LOG_LOAD \%DIR_BNDL%%ENV_DIR%\init

xcopy /q /y .\%DIR_BNDL%%ENV_DIR%\win\*.cmd .\bin >NUL

CALL .\%DIR_BNDL%\log\win\LOG_UNLOAD \%DIR_BNDL%%ENV_DIR%\init
