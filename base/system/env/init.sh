#!/bin/bash
# shellcheck disable=SC2086


log_enter /$SYS_DIR/env/init

cp ./$SYS_DIR/env/linux/*.sh ./bin

log_exit /$SYS_DIR/env/init
