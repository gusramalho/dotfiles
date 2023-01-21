#!/usr/bin/env bash


clusters=$(kubectl config get-contexts --output=name)

choice=$(printf "%s\n" "${clusters[@]}" | sort | dmenu -i -l 20 -p "Select context: ")

if [ ! -z "$choice" ]; then
  alacritty -e k9s --context $choice
fi

