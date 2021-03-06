#!/bin/bash
# shellcheck disable=SC2086


updateRepo()
{
  log_enter updateRepo

  DIR=$1
  log_info Updating repo $DIR

  cd "$DIR" || return 1
  git pull
	if [ $? -ne 0 ]; then
		log_err Error pulling repo $DIR
		return $?
	fi

  cd ..

  log_exit updateRepo

  return 0
}
