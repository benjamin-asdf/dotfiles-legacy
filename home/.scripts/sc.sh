#!/usr/bin/env bash

script_name="new-script"
script_dir=".scripts"
shebang="#!/usr/bin/env bash"

if [ -n "$1" ]; then
    script_name=$1
fi

cd ~/$script_dir

[ -f "$script_name" ] && \
    echo "${script_name} is already a script. Aborting." && exit 0

echo $shebang >> $script_name &&
fish -c "ec ${script_name}"
