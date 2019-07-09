#!/usr/bin/fish

function _aware_help
    echo "
    Description:
    Sends notifcations that are supposed to increase awareness.
    Uses a message from the function 'best-message'.

    Optional parameters:
    -i --interval:
    The interval in minutes between notifcations. Default is 15
    -h --help:
    Print this help and exit with code 0."
end
