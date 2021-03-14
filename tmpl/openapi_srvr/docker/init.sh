#!/bin/bash
# shellcheck disable=SC2086


log_enter /$DIR_TMPL/docker$DIR_SLASH$FILE_INIT

cp ./$DIR_TMPL/docker$FILES $DIR_BIN

log_exit /$DIR_TMPL/docker$DIR_SLASH$FILE_INIT
