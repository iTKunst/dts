#!/bin/bash
# shellcheck disable=SC2086


log_enter /$DIR_TMPL/docker/init

cp $TMPL_DIR//docker/linux/*.sh ./bin

log_exit /$DIR_TMPL/docker/init
