#!/bin/bash
# shellcheck disable=SC2086


log_enter /$TMPL_DIR$DCKR_DIR/init

cp $TMPL_DIR//docker/linux/*.sh ./bin

log_exit /$TMPL_DIR/docker/init