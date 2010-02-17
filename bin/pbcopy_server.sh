#!/bin/bash

if [[ -e /tmp/pbcopy.pipe ]]; then
    exit 1
fi

while true; do
    /bin/cat /tmp/pbcopy.pipe | /usr/bin/pbcopy
done

# http://stackoverflow.com/questions/816302/unable-to-have-pbcopy-clipboard-inside-screen/865890
