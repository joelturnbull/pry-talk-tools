#!/bin/bash

REV=$1

if [ x$REV == x ]; then
    echo "Usage: git-get-child  []"
    exit
fi

HASH=$(git rev-parse $REV)

NUM=$2

if [ x$NUM == x ]; then
    NUM=1
fi

git rev-list --all --parents | grep " $HASH" | sed -n "${NUM}s/\([^ ]*\) .*$/\\1/p"
