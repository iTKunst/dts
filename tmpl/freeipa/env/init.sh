#!/bin/bash
# shellcheck disable=SC2086


log_enter /$TEMPLATE_DIR/env/init

cp ./$TEMPLATE_DIR/env/linux/pENV.sh ./bin

log_exit /$TEMPLATE_DIR/env/init