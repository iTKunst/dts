#!/bin/bash
# shellcheck disable=SC2086



echo $DIR_BOOT$CMD_DIR$FILE_INIT [ENTER]

  cp $DIR_BOOT$CMD_DIR$FILES $DIR_BIN

  CMD_PATH=$DIR_BIN$FILE_PATH
  echo CMD_PATH is $CMD_PATH [VAR]
  source $CMD_PATH

  CMD_LOG=$FILE_LOG
  echo CMD_LOG is $CMD_LOG [VAR]
  source $CMD_LOG

echo $DIR_BOOT$FILE_INIT [EXIT]
