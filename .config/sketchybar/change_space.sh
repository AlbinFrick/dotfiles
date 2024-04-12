#!/bin/bash

space_index=$(echo "$1" | tr -cd '0-9')

get_key_code() {
    local digit="$1"
    case "$digit" in
        1) echo 0;;
        2) echo 1;;
        3) echo 2;;
        4) echo 3;;
        5) echo 5;;
        6) echo 6;;
        7) echo 7;;
        8) echo 8;;
        9) echo 9;;
        0) echo 11;;
        *) echo "Invalid digit";;
    esac
}

switch_to_space() {
    local key_code=$1
    osascript -e  '
        set key_code to '$key_code'
        tell application "System Events"
            key code key_code using {option down}
        end tell
        '
}

key_code=$(get_key_code "$space_index")

if [[ $key_code != "Invalid digit" ]]; then
 switch_to_space $key_code
else
    echo "Invalid digit: $digit"
fi
