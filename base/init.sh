#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_BASE$FILE_INIT


  source $DIR_CMD$FILE_INIT

  SRC=$DIR_PROJ$FILE_INIT
  log_var SRC $SRC

  TRG=$DIR_CURR
  log_var TRG $TRG

  cp $SRC $TRG

log_exit $DIR_BASE$FILE_INIT

