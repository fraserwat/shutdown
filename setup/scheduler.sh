#!/bin/bash

# Will add script to the Mac OS launchd list.

set -e 

main() {
    # Generate plist file from current directory
    cat "$(pwd)/setup/sleep-template.plist" \
        | awk '{sub(/ENTER_PATH_HERE/,ENVIRON["PWD"]); print}' \
        > setup/sleep.plist
    user_id=$(id -u)

    echo "$user_id"
    launchctl bootstrap gui/$user_id "$(pwd)/setup/sleep.plist"
}

main $@
