#!/bin/bash
echo '------------------------------------------------BUILDING SITE---------------------------------------------------'
python -m callystio build
echo '----------------------------------------------UPDATING SNAPSHOTS------------------------------------------------'
test -d snapshot && rm -rf snapshot/* || mkdir snapshot
cp dist/* snapshot/