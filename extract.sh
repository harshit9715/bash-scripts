#!/bin/bash

recur() {
    cd "$1";
    find . -name "*.zip" | xargs -P 0 -I fileName sh -c 'unzip -o -d "$(dirname "fileName")/$(basename -s .zip "fileName")" "fileName" && rm "fileName"'
    for f in *; do
        if [ -d "$f" ]; then
            recur "$f"
        fi
    done
    cd "../"
    return;
}

# execute as ./extract.sh 'Logs.zip'

for i in "$@"; do
    unzip -d "${i%.*}" "$i"
	recur "${i%.*}"
done
