#!/bin/bash
# shellcheck disable=SC2086

ENV=env
GIT=git
LOG=log
MISC=misc
OS=linux

DIR_ENV=$SLASH$ENV
DIR_GIT=$SLASH$GIT
DIR_LOG=$SLASH$LOG
DIR_MISC=$SLASH$MISC
DIR_OS=$SLASH$OS

source $DIR_BNDL/log/linux/LOG.sh

log_enter $DIR$CMD_INIT

source $DIR_DTS$DIR_BASE$CMD_INIT
source $DIR_DTS$DIR_TEMPLATE$CMD_INIT

log_exit $DIR$CMD_INIT

