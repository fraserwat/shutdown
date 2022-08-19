#!/bin/bash

# Will add script to the Mac OS launchd list.

set -e 

main() {
    # Generate plist file from current directory
    cat "$(pwd)/setup/bedtime-template.plist" \
        | awk '{sub(/ENTER_PATH_HERE/,ENVIRON["PWD"]); print}' \
        > setup/bedtime.plist
    user_id=$(id -u)
    plist_dir="$(pwd)/setup/bedtime.plist"

    mkdir -p ~/Library/LaunchAgents

    sudo cp $plist_dir ~/Library/LaunchAgents

    launchctl bootout user/$user_id/~/Library/LaunchAgents/bedtime.plist 2> /dev/null
    launchctl enable user/$user_id/~/Library/LaunchAgents/bedtime.plist
    launchctl bootstrap gui/$user_id ~/Library/LaunchAgents/bedtime.plist
}

main $@
