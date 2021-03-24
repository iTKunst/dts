#!/bin/bash
# shellcheck disable=SC2086


log_enter $DIR_TMPL"sys"$FILE_INIT

SRC=../../system/maven
TRG=system

mkdir -p $TRG

cp $SRC $TRG


log_exit $DIR_TMPL"sys"$FILE_INIT