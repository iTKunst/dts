@echo off
CALL settings

SET "DEF_URI_DTS_GIT=https://github.com/iTKunst/dts"
SET "DEF_DIR_DTS=dts"


call LOG_ENTER pUPDATE

if [%DIR_DTS%]==[] (
  ECHO DIR_DTS may be set in settings.sh. [INFO]
  ECHO Setting to default value. [INFO]
  SET "DIR_DTS=%DEF_DIR_DTS%"
)
CALL lOG_VAR DIR_DTS %DIR_DTS%

if not exist %DIR_DTS% (
  call LOG_DIR_ERR %DIR_DTS%
  call LOG_CMD DTS has not been cloned. Must call init!
  goto :EOF
)

SET "DIR_BNDL=%DIR_DTS%/base/bundler"
call LOG_VAR DIR_BNDL %DIR_BNDL%


cd %DIR_DTS%
git pull origin master
cd ..

CALL pINIT

:EOF

call LOG_EXIT pUPDATE


call LOG_CMD Please run pBUILD to create the docker image
