function my_redshift
    set _args $argv
    if test "$argv" = ""
        set _args -O 1700
    end
    redshift $_args
end
