#!/bin/bash
# shellcheck disable=SC2086


updateSubmodule()
{
  log_enter pUPDATE_SUBMODULE

  DIR="$1"
  log_info "Updating submodule $DIR"

  cd "$DIR" || return $?

  git fetch
	if [ $? -ne 0 ]; then
		log_err Error fetching repo $DIR
		return $?
	fi

  RES=$(git log --oneline origin/master -1)
	if [ $? -ne 0 ]; then
		log_err Error retrieveing log for repo $DIR
		return $?
	fi

  log_info "RES is $RES"

  COMMIT="${RES:0:7}"
  log_info "COMMIT is $COMMIT"

  git checkout -q $COMMIT
	if [ $? -ne 0 ]; then
		log_err Error checking out repo $DIR
		return $?
	fi

  cd ..

  git add .
  RES=$?
  log_var RES $RES
	if [ $RES -ne 0 ]; then
		log_err Error adding commit for repo $DIR
		return $?
	fi

  git commit -m "Added new commits from the submodule repository"
  RES=$?
  log_var RES $RES
	if [ $RES -eq 0 ]; then
    git push
    RES=$?
    log_var RES $RES
    if [ $RES -ne 0 ]; then
      log_err Error pushing changes for repo $DIR
      return $RES
    fi
	fi

  log_exit pUPDATE_SUBMODULE

  return 0
}
