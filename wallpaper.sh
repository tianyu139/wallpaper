#!/usr/bin/env bash

# Usage: ./wallpaper.sh 
# Changes the wallpaper to a random one found in $wallDir
# Add script to crontab for automatic change of wallpaper
# Tian Yu 2018

wallDir="$HOME/Pictures/Wallpapers"
newWall=`ls $wallDir | grep -E "*\.(gif|jpg|jpeg|tiff|png)$" | shuf | head -n 1`

gsettings set org.gnome.desktop.background picture-uri "file://${wallDir}/${newWall}"


