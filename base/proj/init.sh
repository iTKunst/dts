#!/bin/bash
# shellcheck disable=SC2086

# echo init.sh [LOAD]

init()
{

  # TOKENS
  export BCK_SLASH=\\
  export COLON=:
  export DOT=.
  export FOR_SLASH=/
  export STAR=*

  # NAMES
  export COM=com
  export DTS=dts
  export EXT=sh
  export GIT_HUB=github
  export HTTPS=https
  export INFO=info
  export INIT=init
  export ITK=iTKunst
  export SETTINGS=settings
  export TMPL=tmpl

  # DIRS
  export DIR_SLASH=$FOR_SLASH

  # FILES
  export FILE_INIT=$INIT$DOT$EXT
  export FILE_SETTINGS=$SETTINGS$DOT$EXT
  
  # HOSTS
  export HOST_GITHUB=$HTTPS$COLON$FOR_SLASH$FOR_SLASH$GIT_HUB$DOT$COM

  # DEFS
  export DEF_DIR_DTS=$DTS
  export DEF_URI_DTS_GIT=$HOST_GITHUB$ITK$DIR_DTS


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


  if [ -z "$URI_DTS_GIT" ]; then
    echo URI_DTS_GIT may be set in settings_uri.sh. [INFO]
    echo Setting to default value [INFO].
    export URI_DTS_GIT=$DEF_URI_DTS_GIT
  fi
  # echo URI_DTS_GIT is $URI_DTS_GIT [VAR]

  if [ -z $TMPL_NAME ]; then
    echo TMPL_NAME [INVALID]
    echo TMPL_NAME must be set in settings.sh. [INFO]
	  exit
  fi
  # echo TMPL_NAME is $TMPL_NAME [VAR]

  export DIR_TMPL_CURR=$DIR_TMPL$DIR_SLASH$TMPL_NAME
  # echo DIR_TMPL_CURR is $DIR_TMPL_CURR [VAR]


  if [ -d "$DIR_DTS" ]; then
    cd $DIR_DTS
    git pull origin master
    cd ..
  else
    git clone $URI_DTS_GIT --no-checkout $DIR_DTS
    cd $DIR_DTS
    git sparse-checkout init --cone
    git sparse-checkout set base/* base/bndl base/glbl base/proj tmpl/$TMPL_NAME
    cd ..
  fi

  source $DIR_DTS$DIR_SLASH$FILE_INIT

  return 0

}

init


# echo init.sh [UNLOAD]