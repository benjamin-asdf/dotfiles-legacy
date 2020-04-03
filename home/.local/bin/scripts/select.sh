#!/bin/sh

# select FILE in *;
select FILE in $(fd re)
do
    echo "chosen file $FILE"
done
