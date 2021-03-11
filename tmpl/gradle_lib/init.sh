#!/bin/bash
# shellcheck disable=SC2086


log_enter /$TMPL_DIR/init

source $TMPL_DIR/$DCKR_DIR/init.sh
source $TMPL_DIR//env/init.sh

log_exit /$TMPL_DIR/init
