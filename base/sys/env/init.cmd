@echo off


rem call LOG_ENTER %DIR_SYS%%ENV_DIR%%DIR_SLASH%%FILE_INIT%
echo .%DIR_SLASH%..%DIR_SLASH%system%ENV_DIR%%DIR_SLASH%%FILE_INIT% [ENTER]

  SET "SRC=..%DIR_SLASH%..%DIR_SLASH%system%ENV_DIR%%FILES%"
  ECHO SRC is %SRC%

  xcopy /q /y  %SRC% %DIR_BIN% >NUL

rem call LOG_EXIT %DIR_SYS%%ENV_DIR%%DIR_SLASH%%FILE_INIT%
echo .%DIR_SLASH%..%DIR_SLASH%system%ENV_DIR%%DIR_SLASH%%FILE_INIT% [EXIT]
