#!/bin/bash
# display command line options

count=1
while [[ -n "$1" ]]; do
    echo "Parameter #$count = $1"
    count=$(( $count + 1 ))
    shift
=======
for param in "$*"; do
    count=$(( $count + 1 ))
>>>>>>> 8f4b1e8 (git-rebase 1)
done
