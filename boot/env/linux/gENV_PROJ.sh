#!/bin/bash
# shellcheck disable=SC2086

log_env_enter gENV_PROJ


  if [ -z "$PROJ_MODE" ]; then
    log_cmd PROJ_MODE may be set it in settings.sh.
    log_info Setting to default.
    export PROJ_MODE=MODE
  fi
  log_env_var PROJ_MODE $PROJ_MODE


  if [ -z $URI_DTS_GIT ]; then
    log_cmd URI_DTS_GIT may be set it in settings_uri.sh.
    log_info Setting to default.
    URI_DTS_GIT=$WEB_DTS_GIT
  fi
  log_env_var URI_DTS_GIT $URI_DTS_GIT


  if [ -z "$PROJ_NAME" ]; then
    log_invalid PROJ_NAME
    log_info Must be set it in settings.sh!
    return 1
  fi
  log_env_var PROJ_NAME $PROJ_NAME


  if [ -z "$SYS_NAME" ]; then
    log_invalid SYS_NAME
    log_cmd Must set it in settings.sh!
    return 1
  fi
  log_env_var SYS_NAME $SYS_NAME


  if [ -z $TMPL_NAME ]; then
    log_invalid TMPL_NAME
    log_cmd You must set it in settings.sh!
    return 1
  fi
  log_env_var TMPL_NAME $TMPL_NAME

  export TMPL_NAME_DIR=$DIR_SLASH$TMPL_NAME
  log_env_var TMPL_NAME_DIR $TMPL_NAME_DIR

  export DIR_BASE=$DIR_DTS$BASE_DIR
  log_env_var DIR_BASE $DIR_BASE

  export DIR_BIN=$BIN
  log_env_var DIR_BIN $DIR_BIN

  export DIR_CERT=$USR_DIR$LOCAL_DIR$SHARE_DIR$CA_CERT_DIR
  log_env_var DIR_CERT $DIR_CERT

  export DIR_CMD=$DIR_BASE$CMD_DIR
  log_env_var DIR_CMD $DIR_CMD

  export DIR_PROJ=$DIR_BASE$PROJ_DIR
  log_env_var DIR_PROJ $DIR_PROJ

  export DIR_SYS=$DIR_UP$DIR_UP$SYS
  log_env_var DIR_SYS $DIR_SYS

  export DIR_TMPL=$DIR_DTS$TMPL_DIR
  log_env_var DIR_TMPL $DIR_TMPL

  export DIR_TMPL_CURR=$DIR_TMPL$TMPL_NAME_DIR
  log_env_var DIR_TMPL_CURR $DIR_TMPL_CURR

  export FILE_INIT=$DIR_SLASH$INIT_FILE
  log_env_var FILE_INIT $FILE_INIT

  export FILE_DCKR=$DIR_SLASH$DOCKER_FILE
  log_env_var FILE_DCKR $FILE_DCKR

  export FILE_LOG=$DIR_SLASH$LOG_FILE
  log_env_var FILE_LOG $FILE_LOG

  export FILE_POM=$DIR_SLASH$POM_FILE
  log_env_var FILE_POM $FILE_POM

  export FILE_SETTINGS=$DIR_SLASH$SETTINGS_FILE
  log_env_var FILE_SETTINGS $FILE_SETTINGS

  export FILE_ENV_PROJ=$PROJ$DIR_SLASH$ENV_PROJ_FILE
  log_env_var FILE_ENV_PROJ $FILE_ENV_PROJ

  export FILE_ENV_SYS=$ENV_SYS_FILE
  log_env_var FILE_ENV_SYS $FILE_ENV_SYS

  export FILE_ENV_TMPL=$DIR_SLASH$ENV_TMPL_FILE
  log_env_var FILE_ENV_TMPL $FILE_ENV_TMPL

  export BUILD_DCKR=$TMPL$FILE_DCKR
  log_env_var BUILD_DCKR $BUILD_DCKR

log_env_exit gENV_PROJ

return 0