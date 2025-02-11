#!/bin/bash


IFS="\n"
while read DOTFILE; do
    if [ -a "$DOTFILE" ]; then
        echo "DIFF:"
        if ! diff ".$DOTFILE" "$DOTFILE"; then
            echo "$DOTFILE" from repository is different from local.
        fi  
    fi
done < DOTFILES
