#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_DTS$DIR_BASE$DIR_GLOBAL/env/init

cp $DIR_DTS$DIR_BASE$DIR_GLOBAL/env/linux/*.sh ./bin

log_exit $DIR_DTS$DIR_BASE$DIR_GLOBAL/env/init
