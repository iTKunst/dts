#!/bin/bash
# shellcheck disable=SC2086

log_enter $DIR_DTS$TMPL_DIR$CMD_INIT

log_var DIR_TMPL $DIR_TMPL
sleep 10

source $DIR_TMPL$CMD_INIT

log_exit $DIR_DTS$TMPL_DIR$CMD_INIT

