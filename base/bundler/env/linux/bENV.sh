#!/bin/bash
# shellcheck disable=SC2086


echo bENV [ENTER]

source settings.sh
source $BIN_DIR/bENV_DIRS.sh
source $BIN_DIR/bENV_NAMES.sh


DEF_PROJ_MODE=d
DEF_URI_DTS_GIT=https://github.com/iTKunst/dts

if [ -z "$PROJ_MODE" ]; then
  echo "PROJ_MODE nay be set it in settings.sh!"
  echo "Setting to default!"
  export PROJ_MODE=DEF_PROJ_MODE
fi
echo PROJ_MODE is $PROJ_MODE


if [ -z $URI_DTS_GIT ]; then
  echo "URI_DTS_GIT nay be set it in settings_uri.sh!"
  echo "Setting to default!"
  URI_DTS_GIT=$DEF_URI_DTS_GIT
fi
echo URI_DTS_GIT is $URI_DTS_GIT


if [ -z "$PROJ_NAME" ]; then
  echo PROJ_NAME [INVALID]
  echo "Must be set it in settings.sh!"
  return 1
fi
echo PROJ_NAME is $PROJ_NAME


if [ -z "$SYS_NAME" ]; then
  echo SYS_NAME [INVALID]
  echo "Must set it in settings.sh!"
  return 1
fi
echo SYS_NAME is $SYS_NAME


if [ -z $TMPL_NAME ]; then
  echo TMPL_NAME [INVALID]
  echo "You must set it in settings.sh!"
  return 1
fi
echo TMPL_NAME is $TMPL_NAME

export BSE_DIR=$DIR_DTS$DIR_BASE
echo BSE_DIR is $BSE_DIR

export BNDL_DIR=$BSE_DIR$DIR_BNDL
echo BNDL_DIR is $BNDL_DIR

export GLBL_DIR=$BSE_DIR$DIR_GLBL
echo GLBL_DIR is $GLBL_DIR

export SYS_DIR=$UP$UP$SYS
echo SYS_DIR is $SYS_DIR

export TMPL_DIR=$DIR_DTS$DIR_TMPL$DIR_TMPL_CUR
echo TMPL_DIR is $TMPL_DIR


echo bENV [EXIT]

return 0