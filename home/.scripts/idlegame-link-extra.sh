#!/usr/bin/env bash

# TODO abstraction (idlegame-link)

assetsMounted=$(mount -l | grep IdleGameSymbolicLink-Extra)

symlink_dir=$COSDIR/IdleGameSymbolicLink-Extra

[ -z "$assetsMounted" ] && sudo mkdir -p $symlink_dir/Assets && sudo mount --bind $IDLEGAMEDIR/Assets $symlink_dir/Assets

spawn-idlegame-konsole.sh idlegame-link $symlink_dir
