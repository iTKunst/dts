#!/bin/bash
# shellcheck disable=SC2086

log_env_enter gENV_PROJ

  source settings.sh

  source gENV_DIRS.sh
  source gENV_FILES.sh
  source gENV_NAMES.sh
  source gENV_WEB.sh


  if [ -z "$PROJ_MODE" ]; then
    log_cmd PROJ_MODE may be set it in settings.sh.
    log_info Setting to default.
    export PROJ_MODE=MODE
  fi
  log_var PROJ_MODE $PROJ_MODE


  if [ -z $URI_DTS_GIT ]; then
    log_cmd URI_DTS_GIT may be set it in settings_uri.sh.
    log_info Setting to default.
    URI_DTS_GIT=$WEB_DTS_GIT
  fi
  log_var URI_DTS_GIT $URI_DTS_GIT


  if [ -z "$PROJ_NAME" ]; then
    log_invalid PROJ_NAME
    log_info Must be set it in settings.sh!
    return 1
  fi
  log_var PROJ_NAME $PROJ_NAME


  if [ -z "$SYS_NAME" ]; then
    log_invalid SYS_NAME
    log_cmd Must set it in settings.sh!
    return 1
  fi
  log_var SYS_NAME $SYS_NAME


  if [ -z $TMPL_NAME ]; then
    log_invalid TMPL_NAME
    log_cmd You must set it in settings.sh!
    return 1
  fi
  log_var TMPL_NAME $TMPL_NAME


  export DIR_BASE=$DIR_DTS$BASE_DIR
  log_var DIR_BASE $DIR_BASE

  export DIR_BIN=$BIN_DIR
  log_var DIR_BIN $DIR_BIN

  export DIR_BNDL=$DIR_BASE$BNDL_DIR
  log_var DIR_BNDL $DIR_BNDL

  export DIR_CERT=$USR_DIR$LOCAL_DIR$SHARE_DIR$CA_CERT_DIR
  log_var DIR_CERT $DIR_CERT

  log_var GLBL_DIR $GLBL_DIR
  export DIR_GLBL=$DIR_BASE$GLBL_DIR
  log_var DIR_GLBL $DIR_GLBL

  export DIR_PROJ=$DIR_BASE$PROJ_DIR
  log_var DIR_PROJ $DIR_PROJ

  export DIR_SYS=$UP$UP$SYS
  log_var DIR_SYS $DIR_SYS

  export DIR_TMPL=$DIR_DTS$TMPL_DIR
  log_var DIR_TMPL $DIR_TMPL

  export DIR_TMPL_CURR=$DIR_TMPL$TMPL_CURR_DIR
  log_var DIR_TMPL_CURR $DIR_TMPL_CURR

  export FILE_INIT=$DIR_SLASH$INIT_FILE
  log_var FILE_INIT $FILE_INIT

  export FILE_DCKR=$DIR_TMPL_CURR$DCKR_DIR$FOR_SLASH$DCKR_FILE
  log_var FILE_DCKR $FILE_DCKR

  export FILE_LOG=$DIR_SLASH$LOG_FILE
  log_var FILE_LOG $FILE_LOG


log_env_exit gENV_PROJ

return 0