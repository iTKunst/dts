#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_TMPL$ENV_DIR$DIR_SLASH$FILE_INIT

cp $DIR_TMPL_CURR$ENV_DIR$OS_DIR/tENV.sh $DIR_BIN

  if [ ! -d project ]; then
    mkdir project
   # echo create project
  fi

  if [ ! -d project/pENV.sh ]; then
    rem echo copying pENV.sh to project
    SRC_PROJ=$DIR_TMPL_CURR$ENV_DIR$OS_DIR$DIR_SLASH$ENV.sample.cmd
    echo SRC_PROJ is $SRC_PROJ


  fi

log_exit $DIR_TMPL$ENV_DIR$DIR_SLASH$FILE_INIT