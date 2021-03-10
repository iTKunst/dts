#!/bin/bash
# shellcheck disable=SC2086


log_enter /$TEMPLATE_DIR/init

source ./$TEMPLATE_DIR/docker/init.sh
source ./$TEMPLATE_DIR/env/init.sh

log_exit /$TEMPLATE_DIR/init