@echo off


call LOG_ENTER \%DIR_GLBL%%GIT_DIR%%CMD_INIT%

xcopy /q /y %DIR_GLBL%%GIT_DIR%%FILES% %DIR_BIN% >NUL

call LOG_EXIT \%DIR_GLBL%%GIT_DIR%%CMD_INIT%
