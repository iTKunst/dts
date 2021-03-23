#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_BASE$FILE_INIT


  source $DIR_GLBL$FILE_INIT

  SRC=$DIR_PROJ$FILE_INIT
  log_var SRC $SRC

  cp $SRC .

 log_exit $DIR_BASE$FILE_INIT

