#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_load pREMOVE.sh


deleteClone()
{
  log_enter pREMOVE:deleteClone

  DIR=$1
  log_var DIR $DIR

  rm -rf $DIR

  log_exit pREMOVE:deleteClone
}

deleteSubmodule()
{
  log_enter pREMOVE:deleteSubmodule

  DIR=$1
  log_var DIR $DIR

  git submodule deinit $DIR
  git rm --cached $DIR
  rm -rf $DIR
  rm -rf .gitmodules

  log_exit pREMOVE:deleteSubmodule
}


source pSET_TRACE.sh

if [ -d $DIR_BNDL ]; then
  deleteClone $DIR_BNDL
fi

if [ -d $GLBL_DIR ]; then
  deleteClone $GLBL_DIR
fi

if [ -d $DIR_TMPL ]; then
  deleteClone $DIR_TMPL
fi

if [ -d $SYS_DIR ]; then
  deleteClone $SYS_DIR
fi

if [ -d bin ]; then
  rm -rf bin
fi

if [ -d bin ]; then
  rm -rf bin
fi

log_exit pREMOVE
