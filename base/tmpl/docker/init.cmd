@echo off


rem CALL %DIR_BIN%%DIR_SLASH%LOG_ENTER \%DIR_TMPL%\docker%DIR_SLASH%%FILE_INIT%
echo %DIR_TMPL%%DIR_SLASH%docker%DIR_SLASH%%FILE_INIT% [ENTER]

SET "SRC_DCKR=%DIR_TMPL_CURR%%DIR_SLASH%docker%FILES%"
echo SRC_DCKR is %SRC_DCKR%

xcopy /q /y %SRC_DCKR% %DIR_BIN% >NUL

rem CALL LOG_EXIT \%DIR_TMPL%\docker%DIR_SLASH%%FILE_INIT%
echo %DIR_TMPL%%DIR_SLASH%docker%DIR_SLASH%%FILE_INIT% [EXIT]
