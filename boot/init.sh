#!/bin/bash
# shellcheck disable=SC2086



echo $DIR_BOOT$FILE_INIT [ENTER]

  cp $DIR_BOOT$FILES $DIR_BIN

  export CMD_PATH=$DIR_BIN$FILE_PATH
  echo CMD_PATH is $CMD_PATH [VAR]
  source $CMD_PATH
  source $FILE_LOG

echo $DIR_BOOT$FILE_INIT [EXIT]
