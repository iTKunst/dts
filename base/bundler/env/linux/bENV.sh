#!/bin/bash
# shellcheck disable=SC2086


echo bENV [ENTER]

source settings.sh
source bENV_DIRS.sh


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


echo bENV [EXIT]

return 0