@echo off

echo  %DIR_BNDL%%ENV_DIR%\%FILE_INIT% [ENTER]

SET SRC=%DIR_BNDL%%ENV_DIR%%FILES%
echo SRC is %SRC%

xcopy /q /y %SRC% %DIR_BIN%

echo  %DIR_BNDL%%ENV_DIR%\%FILE_INIT% [EXIT]