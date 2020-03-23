#!/bin/zsh
echo "Fetching from repository"
git clone git@github.com:vivien/i3blocks-contrib.git &&
    mv -r ./i3blocks-contrib/temperature ~/.config/i3blocks/
    mv -r ./i3blocks-contrib/cpu_usage ~/.config/i3blocks/
    mv -r ./i3blocks-contrib/gpu-load ~/.config/i3blocks/
    mv -r ./i3blocks-contrib/iface ~/.config/i3blocks/
    echo "Cleaning"
    rm -r ./i3blocks-contrib
