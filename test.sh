#!/bin/bash
set -e 
set -o pipefail
echo '------------------------------------------------BUILDING SITE---------------------------------------------------'
python -m callystio build
echo '-----------------------------------------------TESTING SNAPSHOT-------------------------------------------------'
for file in $(ls ./dist); do
    echo "test -f snapshot/$file"
    test -f snapshot/$file
    echo "cmp dist/$file snapshot/$file"
    cmp dist/$file snapshot/$file
done
