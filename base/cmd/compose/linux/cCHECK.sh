#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source bLOG.sh

log_enter cCHECK

source sENV.sh

log_var SYS_DIR $SYS_DIR

export sPATH=$SYS_DIR/docker-compose
log_var sPATH $sPATH

docker-compose -p $sPATH

log_exit cCHECK
