#!/bin/bash
# shellcheck disable=SC2086


log_enter /$DIR_TMPL/init

source $TMPL_DIR/$DCKR_DIR/init.sh
source $TMPL_DIR//env/init.sh

log_exit /$DIR_TMPL/init
