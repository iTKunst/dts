#!/bin/bash
# shellcheck disable=SC2086


log_enter /$DIR_TMPL$ENV_DIR/init

  cp $DIR_TMPL_CURR$ENV_DIR$OS_DIR/$TMPL_ENV_FILE $DIR_BIN

  if [ ! -f $PROJ_ENV_FILE ]; then
    cp $DIR_TMPL_CURR$ENV_DIR$OS_DIR/pENV.sample.sh $PROJ_ENV_FILE
  fi

log_exit /$DIR_TMPL$ENV_DIR/init