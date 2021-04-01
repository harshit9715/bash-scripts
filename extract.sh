#!/bin/bash

recur() {
    cd "$1";
    find . -name "*.zip" | xargs -P 5 -I fileName sh -c 'unzip -o -d "$(dirname "fileName")/$(basename -s .zip "fileName")" "fileName" && rm "fileName"'
    for f in *; do
        if [ -d "$f" ]; then
            recur "$f"
        fi
    done
    cd "../"
    return;
}

for i in "$@"; do
    'unzip -o -d "$(dirname "$i")/$(basename -s .zip "$i")" "$i"'
    recur "$i"
done

# execute as ./extract.sh 'Logs.zip'
