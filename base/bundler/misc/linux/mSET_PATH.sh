 #!/bin/bash
# shellcheck disable=SC2086
source settings.sh

mSET_PATH() {

	# echo mSET_PATH [ENTER]

	subPATH=$PWD/bin:$PWD/bin

	if echo "$PATH" | grep -q "$subPATH" 1>nul; then
		echo PATH already set for project [INFO]
	else
		echo PATH not yet set for project [INFO]
		echo "export PATH=$subPATH:$PATH">path.txt;
		export PATH=$subPATH:$PATH
		echo Please run 'source path.txt' [CMD]
	fi

	# echo mSET_PATH [EXIT]
}

mSET_PATH