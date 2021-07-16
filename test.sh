#!/bin/bash
set -e 
set -o pipefail
echo '------------------------------------------------BUILDING SITE---------------------------------------------------'
python -m callystio build
echo '-----------------------------------------------TESTING SNAPSHOT-------------------------------------------------'
for file in $(ls ./public); do
    echo "test -f snapshot/$file"
    test -f snapshot/$file
    echo "cmp public/$file snapshot/$file"
    cmp public/$file snapshot/$file
done
