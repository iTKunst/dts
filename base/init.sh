#!/bin/bash
# shellcheck disable=SC2086



log_enter $BSE_DIR$CMD_INIT

log_var GLBL_DIR $GLBL_DIR
sleep 10

source $BNDL_DIR$CMD_INIT
source $GLBL_DIR$CMD_INIT

log_exit $$BSE_DIR$CMD_INIT

