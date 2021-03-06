#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh

log_enter cCHECK

source sENV.sh

log_var SYS_DIR $SYS_DIR

export sPATH=$DIR_SYS/docker-compose
log_var sPATH $sPATH

docker-compose -p $sPATH

log_exit cCHECK
