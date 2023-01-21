#!/usr/bin/env bash

BMARKS_FILE="$HOME/.config/dmenu-bookmarks"

readarray -t bookmarks < "$BMARKS_FILE"
choice=$(printf "%s\n" "${bookmarks[@]}" | awk '{first=$1; $1=""; print $0" | "first}
' | sort | dmenu -i -l 20 -p "Open: ")
url=$(echo $choice | awk -F '|' '{print $2}')

if [ ! -z "$url" ]; then
  google-chrome-stable $url
fi

