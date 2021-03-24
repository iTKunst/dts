#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh

log_enter kCHECK

source $FILE_SYS_ENV

log_var SYS_DIR $SYS_DIR

export sPATH=$SYS_DIR/docker-compose
log_var sPATH $sPATH

docker-compose -p $sPATH

log_exit kCHECK
