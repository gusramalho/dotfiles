#!/usr/bin/env bash

projects=$(find $HOME/Projects -maxdepth 2 \( -name "*build.gradle*" -o -name "*pom.xml*" \) -printf "%p\n" | awk -F "/" '{print $5}')

choice=$(printf "%s\n" "${projects[@]}" | sort | dmenu -i -l 20 -p "Open project: ")

if [ ! -z "$choice" ]; then
  idea $HOME/Projects/$choice
fi

