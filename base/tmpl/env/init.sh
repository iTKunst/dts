#!/bin/bash
# shellcheck disable=SC2086


log_enter /$TMPL_DIR/env$CMD_INIT

cp $TMPL_DIR//env$OS_DIR/tENV.sh ./bin


log_exit /$TMPL_DIR/env$CMD_INIT