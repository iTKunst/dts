#!/bin/bash
# shellcheck disable=SC2086


log_enter bENV_GIT

source bENV_CAT.sh
source bENV_TKN.sh

if [ -z "$PROJ_MODE" ]; then
  export PROJ_MODE=d
fi
log_var PROJ_MODE $PROJ_MODE

if [ -z "$PROJ_NAME" ]; then
  log_invalid PROJ_NAME
  log_cmd "You must set it in settings.sh!"
  return 1
fi
log_var PROJ_NAME $PROJ_NAME

if [ -z "$SYS_NAME" ]; then
  log_invalid SYS_NAME
  log_cmd "You must set it in settings.sh!"
  return 1
fi
log_var SYS_NAME $SYS_NAME

if [ -z $TMPL_NAME ]; then
  log_invalid TMPL_NAME
  log_cmd "You must set it in settings.sh!"
  return 1
fi
log_var TMPL_NAME $TMPL_NAME

if [ -z $URI_DTS_GIT ]; then
  log_invalid URI_DTS_GIT
  log_cmd "URI_DTS_GIT nay be set it in settings_uri.sh!"
  log_cmd "Setting to default!"
  URI_DTS_GIT=https://github.com/iTKunst/dts
vfi
log_var URI_DTS_GIT $URI_DTS_GIT

log_exit bENV_GIT

return 0