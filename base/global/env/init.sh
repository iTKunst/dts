#!/bin/bash
# shellcheck disable=SC2086


log_enter $GLBL_DIR/env/init

cp .$GLBL_DIR/env/linux/*.sh ./bin

log_exit $GLBL_DIR/env/init
