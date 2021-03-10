#!/bin/bash
# shellcheck disable=SC2086

source $DIR_BNDL/log/linux/LOG.sh

log_enter /$DIR_DTS/init

source .$DIR_DTS$DIR_BASE$INIT
source .$DIR_DTS$DIR_TMPL$INIT

log_exit /$DIR_DTS/init

