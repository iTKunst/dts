#!/bin/bash
# shellcheck disable=SC2086

source $DIR_BNDL/log/linux/LOG.sh

log_enter $DIR$CMD_INIT

source $DIR_DTS$DIR_BASE$CMD_INIT
source $DIR_DTS$DIR_TEMPLATE$CMD_INIT

log_exit $DIR$CMD_INIT

