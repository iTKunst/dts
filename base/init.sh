#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_BASE$FILE_INIT


source $DIR_BNDL$FILE_INIT

log_var DIR_GLBL $DIR_GLBL

source $DIR_GLBL$FILE_INIT

cp $DIR_PROJ$FILE_INIT .


log_exit $DIR_BASE$FILE_INIT

