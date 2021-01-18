#!/bin/sh

emacsclient "$1" -s "$(fd . /run/user/1000/emacs/)"
