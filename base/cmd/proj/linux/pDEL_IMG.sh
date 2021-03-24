#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source bLOG.sh


log_enter pDEL_IMG


source tENV.sh

IMG=$PROJ_IMG
log_var IMG $IMG

docker rmi $IMG


log_exit pDEL_IMG


