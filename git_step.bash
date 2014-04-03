#!/bin/bash

CURRENTREV=$(git rev-parse HEAD)
echo $CURRENTREV
NEXTREV=$(bash tools/git_next_rev.bash $CURRENTREV)
echo $NEXTTREV
git co $NEXTREV
