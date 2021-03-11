#!/bin/bash
# shellcheck disable=SC2086


echo bENV [ENTER]

source settings.sh
source bin/bENV_DIRS.sh
source bin/bENV_NAMES.sh


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

export DIR_BASE=$DIR_DTS$BASE_DIR
echo DIR_BASE is $DIR_BASE

export DIR_BNDL=$DIR_BASE$BNDL_DIR
echo DIR_BNDL is $DIR_BNDL

export DIR_GLBL=$DIR_BASE$GLBL_DIR
echo DIR_GLBL is $DIR_GLBL

export DIR_SYS=$UP$UP$SYS
echo DIR_SYS is $DIR_SYS

export DIR_TMPL=$DIR_DTS$TMPL_DIR
echo DIR_TMPL is $DIR_TMPL

export DIR_TMPL_CURR=$DIR_TMPL$TMPL_CUR_DIR
echo DIR_TMPL_CURR is $DIR_TMPL_CURR


echo bENV [EXIT]

return 0