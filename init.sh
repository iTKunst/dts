#!/bin/bash
# shellcheck disable=SC2086

source .$DIR_BNDL/log/linux/LOG.sh

log_enter /$DIR_DTS/init

source ./$DIR_BASE/init.sh
source ./$DIR_TMPL/init.sh

log_exit /$DIR_DTS/init

