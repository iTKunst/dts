#!/bin/bash
# shellcheck disable=SC2086

log_enter $DIR_DTS$DIR_TEMPLATE$CMD_INIT

log_var DIR_TMPL $DIR_TMPL

source $DIR_DTS$DIR_TMPL$CMD_INIT

log_exit $DIR_DTS$DIR_TEMPLATE$CMD_INIT

