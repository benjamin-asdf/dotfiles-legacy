#!/usr/bin/env bash

help() {
    echo "Usage:
    benj-git-is-ancestor <revision> <revision>
    Example: benj-git-is-ancestor develop HEAD "
}

[ $# -ne 2 ] && echo invalid number of arguments && help && exit 1

git merge-base --is-ancestor "$1" "$2"

if [ $? -eq 0 ]
    then echo "$1" is ancestor of "$2"
elif [ $? -eq 1 ]
    then echo "$1" is not ancestor of "$2"
else echo "Some error occured."
fi
