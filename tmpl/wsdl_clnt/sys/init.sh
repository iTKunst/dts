#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_TMPL_CURR$SYS_DIR$FILE_INIT

  CMD_MVN=$DIR_SYS$MVN_DIR$FILE_INIT
  log_var CMD_MVN $CMD_MVN
  source $CMD_MVN

  CMD_NEX=$DIR_SYS$NEXUS_DIR$FILE_INIT
  log_var CMD_NEX $CMD_NEX
  source $CMD_NEX

  SRC_CLNT=$DIR_SOAP_CLNT$DIR_SLASH$PROJ_NAME$DIR_SLASH$STAR
  log_var SRC_CLNT $SRC_CLNT

  TRG_CLNT=$DIR_CODE_GEN_CLNT
  log_var TRG_CLNT $TRG_CLNT

  if [ ! -d $TRG_CLNT ]; then
    mkdir -p $TRG_CLNT
    echo create $TRG_CLNT
  fi

  cp -r $SRC_CLNT $TRG_CLNT

log_exit $DIR_TMPL_CURR$SYS_DIR$FILE_INIT