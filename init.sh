#!/bin/bash
# shellcheck disable=SC2086

source $DIR_BNDL/log/linux/LOG.sh

CMD_DIR=/$DIR_DTS

log_enter $CMD_DIR$CMD_INIT

source $CMD_DIR$DIR_BASE$CMD_INIT
#source $CMD_DIR$DIR_TEMPLATE$CMD_INIT

log_exit $CMD_DIR$CMD_INIT

