#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_TMPL$ENV_DIR$CMD_INIT

cp $TMPL_DIR$ENV_DIR$OS_DIR/tENV.sh ./bin


log_exit $DIR_TMPL$ENV_DIR$CMD_INIT