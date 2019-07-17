#!/usr/bin/fish

function aware -d "Send notifcations for awareness"
    set -l interval 15

    getopts $argv | while read -l key value
        switch $key
            case _
                _aware_help >&2
                return
            case i interval
                set interval $value
            case h help
                _aware_help >&2
                return
        end
    end

    while true
        notify-send "Some time passed." (best-message)
        echo do notify-send
        sleep "$interval"m
    end
end
