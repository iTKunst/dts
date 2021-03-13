#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_BASE$CMD_INIT


source $DIR_BNDL$CMD_INIT
source $DIR_GLBL$CMD_INIT

cp $DIR_PROJ$CMD_INIT .
cp $DIR_PROJ$CMD_UPDATE .


log_exit $DIR_BASE$CMD_INIT

