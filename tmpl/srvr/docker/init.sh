#!/bin/bash
# shellcheck disable=SC2086


log_enter /$TEMPLATE_DIR/docker/init

cp ./$TEMPLATE_DIR/docker/linux/*.sh ./bin

log_exit /$TEMPLATE_DIR/docker/init