#!/bin/bash
# display command line options

count=1
for param in "$@"; do
<<<<<<< HEAD
    echo "\$@ Parameter #$count = $param"
=======
    echo "Next parameter: $param"
>>>>>>> a4fdbda (git-rebase 2)
    count=$(( $count + 1 ))
done

echo "====="
