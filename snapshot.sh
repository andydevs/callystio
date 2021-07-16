#!/bin/bash
echo '------------------------------------------------BUILDING SITE---------------------------------------------------'
python -m callystio build
echo '----------------------------------------------UPDATING SNAPSHOTS------------------------------------------------'
test -d snapshots && rm -rf snapshots/* || mkdir snapshots
cp dist/* snapshots/