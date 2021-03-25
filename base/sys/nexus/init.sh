#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_SYS$NEXUS_DIR$FILE_INIT

TRG=$SYS
log_var TRG $TRG

SRC=$DIR_SYS$NEXUS_DIR$FILE_NEXUS
log_var SRC $SRC

cp $SRC $TRG

log_exit $DIR_SYS$NEXUS_DIR$FILE_INIT