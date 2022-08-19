#!/bin/sh

main() {
    get_skip_status
    echo $AUTO_SLEEP_SKIP
    if [[ "$AUTO_SLEEP_SKIP" = "TRUE" ]] ; then
        exit 0
    fi
    shutdown now
}

get_skip_status() {
    envpath="$HOME/bash-scripts/skip_bedtime.env"
    AUTO_SLEEP_SKIP=`cat "$envpath" | sed -r 's/[[:alnum:]]+=/&/g' \
        | awk -F= '$1="AUTO_SLEEP_SKIP"{print $2} ;'`
}

main "$@"
