#!/bin/bash
# shellcheck disable=SC2086



echo $DIR_LOG$FILE_INIT [ENTER]

  cp $DIR_LOG$FILES $DIR_BIN

  export CMD_PATH=$DIR_BIN$FILE_PATH
  echo CMD_PATH is $CMD_PATH [VAR]
  source $CMD_PATH
  source LOG.sh

echo $DIR_LOG$FILE_INIT [EXIT]
