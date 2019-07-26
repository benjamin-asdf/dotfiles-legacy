#!/usr/bin/fish

function aware -d "Send notifcations for awareness"
    set -l interval 15
    set -l oneShot ""

    getopts $argv | while read -l key value
        switch $key
            case _
                _aware_help >&2
                return
            case o
                set oneShot $value
            case one-shot
                set oneShot $value
            case interval
                set interval $value
            case i
                set interval $value
            case h help
                _aware_help >&2
                return
        end
    end

    if test {$oneShot}
        best-notification
        return
    end

    while true
        best-notification
        sleep "$interval"m
    end
end
