#!/bin/bash
# shellcheck disable=SC2086


# echo update.sh [LOAD]

REM TOKENS
SET "BCK_SLASH=\\"
SET "COLON=:"
SET "DOT=."
SET "FOR_SLASH=/"
SET "STAR=*"

REM NAMES
SET "DTS=dts"
SET "EXT=cmd"
SET "INIT=init"
SET "SETTINGS=settings"

REM DIRS
SET "DIR_SLASH=%BCK_SLASH%"

REM FILES
SET "FILE_INIT=%DIR_SLASH%%INIT%%DOT%%EXT%"
SET "FILE_SETTINGS=%SETTINGS%%DOT%%EXT%"

REM DEFS
SET "DEF_DIR_DTS=dts"


update()
{

  if not exist %FILE_SETTINGS% (
    echo %FILE_SETTINGS% not found [FILE_ERR]
    return 1
  fi
  source %FILE_SETTINGS%

  if [%DIR_DTS%]==[] (
    echo DIR_DTS may be set in settings.sh. [INFO]
    echo Setting to default value. [INFO]
    SET "DIR_DTS=%DEF_DIR_DTS%"
  fi
  REM echo DIR_DTS is %DIR_DTS% [VAR]

  cd %DIR_DTS%

  git pull origin master

  cd ..

  source %DIR_DTS%%FILE_INIT%


  return 0

}

update


REM echo update.sh [UNLOAD]