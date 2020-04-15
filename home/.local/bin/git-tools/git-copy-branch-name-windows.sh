#!/bin/sh

git branch -l | grep '\*' | awk '{print $2}' | clip
