@echo off
CALL settings


call LOG_ENTER pUPDATE

IF NOT EXIST %DIR_BNDL% (
  call LOG_DIR_ERR %DIR_BNDL%
  call LOG_CMD The %DIR_BNDL% module has not been cloned. Must call init!
  goto :EOF
)

IF NOT EXIST %DIR_GLBL% (
  call LOG_DIR_ERR %DIR_GLBL%
  call LOG_CMD The %DIR_GLBL% module has not been cloned. Must call init!
  goto :EOF
)

IF NOT EXIST %DIR_SYS% (
  call LOG_DIR_ERR %DIR_SYS%
  call LOG_CMD The %DIR_SYS% module has not been cloned. Must call init!
  goto :EOF
)

IF NOT EXIST %DIR_TMPL% (
  call LOG_DIR_ERR %DIR_TMPL%
  call LOG_CMD The %DIR_TMPL% module has not been cloned. Must call init!
  goto :EOF
)

CALL pUPDATE_REPO %DIR_BNDL%
CALL pUPDATE_REPO %DIR_GLBL%
CALL pUPDATE_REPO %DIR_TMPL%
CALL pUPDATE_SUB %DIR_SYS%

REM git pull --recurse-submodules

:EOF

CALL pINIT

call LOG_EXIT pUPDATE


call LOG_CMD Please run pBUILD to create the docker image
