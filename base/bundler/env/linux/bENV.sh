#!/bin/bash
# shellcheck disable=SC2086


log_enter bENV


source bENV_CAT.sh
source bENV_TKN.sh


DEF_URI_DTS_GIT=https://github.com/iTKunst/dts
DEF_PROJ_MODE=d

if [ -z "$PROJ_MODE" ]; then
  log_cmd "PROJ_MODE nay be set it in settings.sh!"
  log_cmd "Setting to default!"
  export PROJ_MODE=DEF_PROJ_MODE
fi
log_var PROJ_MODE $PROJ_MODE


if [ -z $URI_DTS_GIT ]; then
  log_cmd "URI_DTS_GIT nay be set it in settings_uri.sh!"
  log_cmd "Setting to default!"
  URI_DTS_GIT=$DEF_URI_DTS_GIT
fi
log_var URI_DTS_GIT $URI_DTS_GIT


if [ -z "$PROJ_NAME" ]; then
  log_invalid PROJ_NAME
  log_cmd "Must be set it in settings.sh!"
  return 1
fi
log_var PROJ_NAME $PROJ_NAME


if [ -z "$SYS_NAME" ]; then
  log_invalid SYS_NAME
  log_cmd "Mkust set it in settings.sh!"
  return 1
fi
log_var SYS_NAME $SYS_NAME


if [ -z $TMPL_NAME ]; then
  log_invalid TMPL_NAME
  log_cmd "You must set it in settings.sh!"
  return 1
fi
log_var TMPL_NAME $TMPL_NAME


log_exit bENV

return 0