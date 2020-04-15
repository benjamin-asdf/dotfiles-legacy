#!/bin/sh

git ls-tree -z --name-only -r $1 | grep $2 -null | sed 's|\ |\\ |g' | xargs -0 git checkout $1 --
