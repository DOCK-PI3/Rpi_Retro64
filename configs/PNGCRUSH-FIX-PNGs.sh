#!/bin/bash
# PNG SPACE COLOR REPAIR-FIX
# HERRAMIENTA PARA REPARAR ESPACIO DE COLOR INCORRECTO pngcrush
find /home/retro/MABE/layouts/ -type f -iname '*.png' -exec pngcrush -ow -rem allb -reduce {} \;
find /home/retro/MABE/collections/ -type f -iname '*.png' -exec pngcrush -ow -rem allb -reduce {} \;