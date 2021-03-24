@echo off


rem CALL %DIR_BIN%%DIR_SLASH%LOG_ENTER %DIR_TMPL%%DIR_SLASH%%FILE_INIT%
rem echo %DIR_TMPL%%DIR_SLASH%%FILE_INIT% [ENTER]

  SET "SRC=%SYS_DIR%%MVN_DIR%"
  rem echo SRC is %SRC%
  SET "TRG=%SYS%"
  rem echo TRG is %TRG%

  mkdir -p $TRG

  xcopy /q /y %SRC% %$TRG% >NUL


rem CALL LOG_EXIT \%DIR_TMPL%%DIR_SLASH%%FILE_INIT%
rem echo %DIR_TMPL%%DIR_SLASH%%FILE_INIT% [EXIT]
