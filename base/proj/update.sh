#!/bin/bash
# shellcheck disable=SC2086


# echo update.sh [LOAD]

# TOKENS
export BCK_SLASH=\\
export COLON=:
export DOT=.
export FOR_SLASH=/
export STAR=*

# NAMES
export DTS=dts
export EXT=sh
export INIT=init
export SETTINGS=settings

# DIRS
export DIR_SLASH=$FOR_SLASH

# FILES
export FILE_INIT=$DIR_SLASH$INIT$DOT$EXT
export FILE_SETTINGS=$SETTINGS$DOT$EXT

# DEFS
export DEF_DIR_DTS=dts


update()
{

  if [ ! -f $FILE_SETTINGS ]; then
    echo $FILE_SETTINGS not found [FILE_ERR]
    return 1
  fi
  source $FILE_SETTINGS

  if [ -z "$DIR_DTS" ]; then
    echo DIR_DTS may be set in settings.sh. [INFO]
    echo Setting to default value. [INFO]
    export DIR_DTS=$DEF_DIR_DTS
  fi
  # echo DIR_DTS is $DIR_DTS [VAR]

  cd $DIR_DTS

  git pull origin master

  cd ..

  source $DIR_DTS$FILE_INIT

  return 0

}

update


# echo update.sh [UNLOAD]