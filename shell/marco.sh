#!/usr/bin/env bash

marco() {   
    CD_DEST=$(pwd)
}

polo() {
    if [ -n "$CD_DEST" ]; then
        cd $CD_DEST
    else
        echo "Macro has not been called yet!"
    fi
}
