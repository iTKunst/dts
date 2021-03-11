#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_DTS$DIR_BASE$DIR_GLOBAL/openshift/init

cp $DIR_DTS$DIR_BASE$DIR_GLOBAL/openshift/linux/*.sh ./bin

log_exit $DIR_DTS$DIR_BASE$DIR_GLOBAL/openshift/init
