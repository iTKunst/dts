#!/bin/bash
# shellcheck disable=SC2086

 echo init.sh [LOAD]

# TOKENS
export BCK_SLASH=\\
export COLON=:
export DOT=.
export FOR_SLASH=/
export STAR=*

# NAMES
export BASE=base
export BNDL=bndl
export COM=com
export DTS=dts
export EXT=sh
export GIT=git
export GIT_HUB=github
export GLBL=glbl
export HTTPS=https
export INFO=info
export INIT=init
export ITK=iTKunst
export PROJ=proj
export SETTINGS=settings
export SPRS_CHKOUT=sparse-checkout
export TMPL=tmpl
export UPDATE=update

# DIRS
export DIR_SLASH=$FOR_SLASH

export DIR_BASE=$DIR_SLASH$BASE
export DIR_BNDL=$DIR_SLASH$BNDL
export DIR_GLBL=$DIR_SLASH$GLBL
export DIR_PROJ=$DIR_SLASH$PROJ
export DIR_TMPL=$DIR_SLASH$TMPL

# FILES
export FILE_INIT=$INIT$DOT$EXT
export FILE_SETTINGS=$SETTINGS$DOT$EXT
export FILE_SPRS_CHKOUT=$DOT$GIT$DIR_SLASH$INFO$DIR_SLASH$SPRS_CHKOUT
export FILE_UPDATE=$UPDATE$DOT$EXT

# HOSTS
export HOST_GITHUB=$HTTPS$COLON$FOR_SLASH$FOR_SLASH$GIT_HUB$DOT$COM

# DEFS
export DEF_DIR_DTS=$DTS
export DEF_URI_DTS_GIT=$HOST_GITHUB$ITK$DIR_DTS


init()
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

  if [ -d "$DIR_DTS" ]; then
    echo Already initialized [INFO]
    echo Run pUPDATE [CMD]
    return 0
  fi

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


  mkdir -p $DIR_DTS
  cd $DIR_DTS

  git init
  git remote add origin -f $URI_DTS_GIT
  git config core.sparsecheckout true

  {
    echo $FILE_INIT
    echo $DIR_BASE$DIR_SLASH$FILE_INIT
    echo $DIR_BASE$DIR_BNDL$DIR_SLASH$STAR
    echo $DIR_BASE$DIR_GLBL$DIR_SLASH$STAR
    echo $DIR_BASE$DIR_PROJ$DIR_SLASH$FILE_INIT
    echo $DIR_BASE$DIR_PROJ$DIR_SLASH$FILE_UPDATE
    echo $DIR_TMPL_CURR$DIR_SLASH$STAR
  } >> $FILE_SPRS_CHKOUT

  git pull origin master

  cd ..

  source $DIR_DTS$DIR_SLASH$FILE_INIT

  return 0

}

init


 echo init.sh [UNLOAD]