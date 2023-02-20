#!/bin/bash
################################################################################################
#################################################################################################

dir="$1"
name="${dir##*/}"
name="${name%.*}"
framedir="/home/retro/MABE/collections/Daphne/roms"

if [[ -f "$dir/$name.commands" ]]; then
    params=$(<"$dir/$name.commands")
fi

"/home/retro/MABE/emulators/daphne/daphne.bin" "$name" vldp -nohwaccel -framefile "$framedir/$name.daphne/$name.txt" -homedir "/home/retro/MABE/emulators/daphne" -fullscreen $params
