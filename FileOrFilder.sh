#!/bin/bash

PASSED=$1
if   [ -d "${PASSED}" ]; then 
	echo "${PASSED} is a directory";
	echo "contents of directory are:"
	ls -1 "${PASSED}"
elif [ -f "${PASSED}" ];then 
	echo "${PASSED} is a file";
	echo "contents of file are:"
	cat "${PASSED}"
else echo "${PASSED} is not valid";
exit 1
fi
