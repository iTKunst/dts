#!/bin/bash
# shellcheck disable=SC2086


log_enter /$TMPL_DIR/env/init

cp $TMPL_DIR//env/linux/pENV.sh ./bin

log_exit /$TMPL_DIR/env/init