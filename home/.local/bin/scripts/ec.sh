#!/bin/sh

echo "$@" >> /tmp/ec-input

emacsclient -n "$@"
