 #!/bin/bash
# shellcheck disable=SC2086
source settings.sh

bPATH() {

	echo bPATH [ENTER]

	subPATH=$PWD/bin:$PWD/bin

	if echo "$PATH" | grep -q "$subPATH" 1>nul; then
		echo PATH already set for project [INFO]
	else
		echo PATH not yet set for project [INFO]
		echo "export PATH=$subPATH:$PATH">path.txt;
		export PATH=$subPATH:$PATH
		echo Please run 'source path.txt' [CMD]
	fi

	echo bPATH [EXIT]
}

bPATH