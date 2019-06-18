#!/usr/bin/env bash

if [ -z "$1" ]
    then
        echo supply revision to compare
        exit 1
    else
        echo
fi

head_rev=$(git rev-parse HEAD)
rev=$(git rev-parse $1)

git log --oneline --graph --left-right --first-parent --decorate $head_rev...$rev
