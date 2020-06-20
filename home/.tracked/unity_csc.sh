#!/bin/bash

# 1) take the Data/Tools/Roslyn dir from the new unity install
# /opt/unity/2020.2.0a12/Editor/Data/Tools/Roslyn/ for me and copy it into your repo
# (could skip step 1 ofcourse)
# copy to BEST_TOOLS_PATH
# 2) make a backup of /opt/unity/Unity-2019.2.8f1/Editor/Data/Tools/RoslynScripts/unity_csc.sh this
# 3) replace it with this script (and fix the paths)
# if something doesn't work then fix the path man

BEST_TOOLS_PATH=/home/benj/idlegame/Tools/Roslyn/linux

if [ -f "$BEST_TOOLS_PATH/Roslyn/csc" ];
then
    CSC_NET_CORE=$BEST_TOOLS_PATH/Roslyn/csc
else
    TOPLEVEL=$(dirname "$0")/../../../..
    CSC_NET_CORE=$TOPLEVEL/artifacts/buildprogram/Stevedore/roslyn-csc-linux/csc
fi

echo $CSC_NET_CORE

eval "\"$CSC_NET_CORE\" /shared "$@""
