#!/bin/sh

dir="$(pwd)"

cd c:/Users/G4G/AppData/Roaming/qutebrowser/config/

cp -f "$dir/autoconfig.yml" ./
cp -f "$dir/config.py" ./
cp -f "$dir/quickmarks" ./
cp -f "$dir/bookmarks" ./

ln -s -d c:/Users/G4G/repos/dracula dracula
