function redshift_smart --description 'redshift optional in increments'
    set -l increase ""
    set -l decrease ""
    set -l screen_temp ""
    set -l reset ""

    set -l _curr_screen_temp_file "/tmp/curr-screen-temp"

    ! [ -f "$_curr_screen_temp_file" ] echo file does not exist


    getopts $argv | while read -l key value
        switch $key
            case _
                echo "Invalid arguments"
                return
            case i increase
                set increase increase
            case d decrease
                set decrease decrease
            case x reset
                set reset reset
            case t screen_temp
                set screen_temp screen_temp
            end
    end

    if test $increase -a $decrease
        echo "Error: The -d argument is not valid together with -r"
        return
    end



end
