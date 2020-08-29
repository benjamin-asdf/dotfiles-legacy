#!/bin/sh


unity_args="-forcefree -buildTarget standalone -projectPath $2"
# -CacheServerIPAddress 192.168.2.113:80

echo unity args are: "$unity_args"

konsole -p tabtitle="$1" -e bash -c "unity-editor $unity_args" &
