#!/bin/bash
# shellcheck disable=SC2086



echo $DIR_BOOT$FILE_INIT [ENTER]

  CMD_CMD=$DIR_BOOT$CMD_DIR$FILE_INIT
  echo CMD_CMD is $CMD_CMD [VAR]
  source $CMD_CMD

  CMD_ENV=$DIR_BOOT$ENV_DIR$FILE_INIT
  echo CMD_ENV is $CMD_ENV [VAR]
  source $CMD_ENV

echo $DIR_BOOT$FILE_INIT [EXIT]
