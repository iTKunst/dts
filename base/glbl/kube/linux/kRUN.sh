#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_enter kRUN

source tENV.sh

kubectl create \
        deployment \
        $SYS_NAME \
        --image=$IMG

log_exit kRUN

