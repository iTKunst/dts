#!/bin/bash
# shellcheck disable=SC2086

log_enter $DIR_DTS$DIR_BASE$DIR_BUNDLER$DIR_LOG$CMD_INIT

cp $DIR_DTS$DIR_BASE$DIR_BUNDLER$DIR_LOG$DIR_OS/*.sh .$DIR_BIN

log_exit $DIR_DTS$DIR_BASE$DIR_BUNDLER$DIR_LOG$CMD_INIT
