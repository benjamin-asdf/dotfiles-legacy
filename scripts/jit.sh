#!/usr/bin/env bash



jit() {
   gitcommand=$1; 
   before=$2;
   after=$3;
   
   shift;shift;shift;
   
    for arg do
        args="$args $before$arg$after"
    done
    
    if [ -n "$args" ]; then
        git ${gitcommand} ${args} 
    else
        echo "No arguments specified after git command $gitcommand"
    fi
}