#!/bin/bash
# shellcheck disable=SC2086

source $DIR_BNDL/log/linux/LOG.sh

DIR=$DIR_DTS

log_enter $DIR$CMD_INIT

source $DIR$DIR_BASE$CMD_INIT
source $DIR$DIR_TEMPLATE$CMD_INIT

log_exit $DIR$CMD_INIT

