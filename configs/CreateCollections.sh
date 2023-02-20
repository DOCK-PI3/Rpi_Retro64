#!/bin/bash
##############################################################|>
#                           )   (    (      (               
#    (                   ( /(   )\ ) )\ )   )\ )         )  
#    )\       (          )\()) (()/((()/(  (()/( (    ( /(  
#  (((_)   (  )\   (    ((_)\   /(_))/(_))  /(_)))\   )\()) 
#  )\___   )\((_)  )\ )   ((_) (_)) (_))   (_)) ((_) ((_)\  
# ((/ __| ((_)(_) _(_/(  / _ \ | _ \/ __|  | _ \ (_)| | (_) 
#  | (__ / _ \| || ' \))| (_) ||  _/\__ \  |  _/ | ||_  _|  
#   \___|\___/|_||_||_|  \___/ |_|  |___/  |_|   |_|  |_|   
#   _____________________________________________________
##############################################################|>
## INFO ######################################################
# Run this script with ./CreateColletions.sh
# ,you can also click on it and run by console "terminal"
###########################################################################################

version=" 1.0"
infobox="${infobox}\n\n_______________________________________________________\n\n"
infobox="${infobox}\n Creador de colecciones automatico"
infobox="${infobox}\n\n\n_______________________________________________________\n\n"
dialog --backtitle "Version de la aplicacion: $version - Multi-creador de colecciones" \
--title "Crea colecciones para retrofe de la forma mas comoda,editar luego es mucho mas facil! (by mabedeep)" \
--msgbox "${infobox}" 35 110

function main_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " COLLECTION CREATOR " \
            --ok-label Create --cancel-label Exit \
            --menu " - Version:$version - COLLECTION BUILDER\n - You Username:$USER" 25 75 20 \
			100 "--- EASY-CREATE ALL RETROFE COLLECTIONS AND FULL CONFIGURATION ---" \
			100 "-----------------------------------------------------------------" \
			1 " # Create American Laser Games collection" \
			2 " # Create Arcade collection" \
			3 " # Create Amiga collection" \
			4 " # Create Amiga 32cd collection" \
			5 " # Create Amstrad CPC collection" \
			6 " # Create Amstrad GX4000 collection" \
			7 " # Create Aplle II collection" \
			8 " # Create Atari 2600 collection" \
			9 " # Create Atari 5200 collection" \
			10 " # Create Atari 7800 collection" \
			11 " # Create Atari Lynx collection" \
			12 " # Create Atari ST collection" \
			13 " # Create Bandai WondersWan collection" \
			14 " # Create Bandai WondersWan Color collection" \
			15 " # Create Casio PV-1000 collection" \
			16 " # Create Casio PV-2000 collection" \
			17 " # Create Daphne collection" \
			18 " # Create Final Burn Alpha collection" \
			19 " # Create Final Burn Neo collection" \
			20 " # Create GCE Vectrex collection" \
			21 " # Create Microsoft MS-DOS collection" \
			22 " # Create Microsoft MSX collection" \
			23 " # Create Microsoft MSX2 collection" \
			24 " # Create NEC PC Engine collection" \
			25 " # Create NEC PC Engine-CD collection" \
			26 " # Create NEC SuperGrafx collection" \
			27 " # Create Nintendo 64 collection" \
			28 " # Create Nintendo Game Boy collection" \
			29 " # Create Nintendo Game Boy Color collection" \
			30 " # Create Nintendo Game Boy Advance collection" \
			31 " # Create Nintendo - Famicon collection" \
			32 " # Create Nintendo Super Nintendo collection" \
			33 " # Create Panasonic 3DO collection" \
			34 " # Create Sami Atomiswave collection" \
			35 " # Create OpenBOR collection" \
			36 " # Create Scummvm collection" \
			37 " # Create Segs 32x collection" \
			38 " # Create Sega Mega CD collection" \
			39 " # Create Sega Dreamcast collection" \
			40 " # Create Sega Game Gear collection" \
			41 " # Create Sega Genesis collection" \
			42 " # Create Sega Master System collection" \
			43 " # Create Sega Naomi collection" \
			44 " # Create Sinclair ZX Spectrum collection" \
			45 " # Create SNK Neo Geo collection" \
			46 " # Create SNK Neo Geo CD collection" \
			47 " # Create Sony PlayStation collection" \
			100 "-----------------------------------------------------------------" \
			2>&1 > /dev/tty)

        case "$choice" in
			100) separador_menu ;;
			1) americanlasergames_creator ;;
			2) arcades_creator ;;
			3) amiga_creator ;;
			4) amiga32cd_creator ;;
			5) amstradcpc_creator ;;
			6) amstradgx4000_creator ;;
			7) apple2_creator ;;
			8) atari2600_creator ;;
			9) atari5200_creator ;;
			10) atari7800_creator ;;
			11) atarilinx_creator ;;
			12) atarist_creator ;;
			13) wonderswan_creator ;;
			14) wonderswanc_creator ;;
			15) casiopv1000_creator ;;
			16) casiopv2000_creator ;;
			17) daphne_creator ;;
			18) fbalpha_creator ;;
			19) fbneo_creator ;;
			20) vectrex_creator ;;
			21) msdos_creator ;;
			22) msx_creator ;;
			23) msx2_creator ;;
			24) pcengine_creator ;;
			25) pcenginecd_creator ;;
			26) supergraftx_creator ;;
			27) n64_creator ;;
			28) gb_creator ;;
			29) gbc_creator ;;
			30) gba_creator ;;
			31) nes_creator ;;
			32) snes_creator ;;
			33) 3do_creator ;;
			34) atomiswave_creator ;;
			35) openbor_creator ;;
			36) scummvm_creator ;;
			37) 32x_creator ;;
			38) megacd_creator ;;
			39) dreamcast_creator ;;
			40) gamegear_creator ;;
			41) genesis_creator ;;
			42) mastersystem_creator ;;
			43) naomi_creator ;;
			44) zxspectrum_creator ;;
			45) neogeo_creator ;;
			46) neogeocd_creator ;;
			47) psx_creator ;;
			*)  break ;;
        esac
    done
}


function separador_menu() {                                          
dialog --infobox "... Separador para el menu, sin funcion ..." 30 55 ; sleep 2
}


function americanlasergames_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "American Laser Games" && touch /home/retro/MABE/launchers/americanlasergames.conf
sudo cat > /home/retro/MABE/launchers/americanlasergames.conf <<_EOF_
# American Laser Games - Generate config by MabeDeep 
executable = /home/retro/MABE/emulators/hypseus/singe.sh
arguments = "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/American\ Laser\ Games/settings.conf
touch /home/retro/MABE/collections/American\ Laser\ Games/settings.conf
sudo cat > /home/retro/MABE/collections/American\ Laser\ Games/settings.conf <<_EOF_
# American Laser Games - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,sh
list.menuSort = true
launcher = americanlasergames
metadata.type = American Laser Games

_EOF_
# ADD TO MAIN MENU - ADD LOGO
cp /home/retro/Rpi_Retro64/configs/C_logos/American\ Laser\ Games.png /home/retro/MABE/collections/American\ Laser\ Games/system_artwork/logo.png
echo "American Laser Games" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... American Laser Games collection susefull create and activate ..." 30 55 ; sleep 2
}

function amstradcpc_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Amstrad CPC" && touch /home/retro/MABE/launchers/amstradcpc.conf
sudo cat > /home/retro/MABE/launchers/amstradcpc.conf <<_EOF_
# Amstrad CPC - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/cap32_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Amstrad\ CPC/settings.conf
touch /home/retro/MABE/collections/Amstrad\ CPC/settings.conf
sudo cat > /home/retro/MABE/collections/Amstrad\ CPC/settings.conf <<_EOF_
# Amstrad CPC - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = dsk,sna,zip,tap,cdt,voc,cpr,m3u
list.menuSort = true
launcher = amstradcpc
metadata.type = Amstrad CPC

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Amstrad\ CPC.png /home/retro/MABE/collections/Amstrad\ CPC/system_artwork/logo.png 
echo "Amstrad CPC" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Amstrad CPC collection susefull create and activate ..." 30 55 ; sleep 2
}

function amstradgx4000_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Amstrad GX4000" && touch /home/retro/MABE/launchers/amstradgx4000.conf
sudo cat > /home/retro/MABE/launchers/amstradgx4000.conf <<_EOF_
# Amstrad GX4000 - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/cap32_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Amstrad\ GX4000/settings.conf
touch /home/retro/MABE/collections/Amstrad\ GX4000/settings.conf
sudo cat > /home/retro/MABE/collections/Amstrad\ GX4000/settings.conf <<_EOF_
# Amstrad GX4000 - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = dsk,sna,zip,tap,cdt,voc,cpr,m3u
list.menuSort = true
launcher = amstradgx4000
metadata.type = Amstrad GX4000

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Amstrad\ GX4000.png /home/retro/MABE/collections/Amstrad\ GX4000/system_artwork/logo.png 
echo "Amstrad GX4000" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Amstrad GX4000 collection susefull create and activate ..." 30 55 ; sleep 2
}

function arcades_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Arcades" && touch /home/retro/MABE/launchers/arcades.conf
sudo cat > /home/retro/MABE/launchers/arcades.conf <<_EOF_
# Arcades - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/mame2003_plus_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Arcades/settings.conf
touch /home/retro/MABE/collections/Arcades/settings.conf
sudo cat > /home/retro/MABE/collections/Arcades/settings.conf <<_EOF_
# Arcades - Generate settings by MabeDeep 
###############################################################################
# The location of where your ROM items exist. Examples:
# list.path = D:/ROMs/MAME                (absolute path)
# list.path = ../ROMs/MAME                (relative path to root of FE dir)
#
# If BASE_ITEM_PATH=D:/ROMs and the name of this collection is named "Arcade"
# then the configuration below will search in D:/ROMs/Arcade
###############################################################################
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms

###############################################################################
# If a game is specified in include.txt then it will be included in the list
# regardless of if the rom actually exists or not. Set this variable to false
# to exclude any items that cannot be found. 
###############################################################################
list.includeMissingItems = true

###############################################################################
# Extensions are comma separated without spaces
###############################################################################
list.extensions = zip

###############################################################################
# If a menu.xml file exists, it will display the menu alphabetically. To
# not auto-sort the menu items alphabetically, set the following to false. 
# This does not apply to how your ROMs are sorted.
###############################################################################
list.menuSort = true

###############################################################################
# The executable to run when an item in a collection item is selected
###############################################################################
launcher = arcades

###############################################################################
# On default, MAME roms are not clearly named. We need to use the MAME 
# metadata for them.
###############################################################################
metadata.type = MAME

###############################################################################
# Default media paths to scan for artwork. Uncomment and edit to override
# the default values.
#
# media.screenshot    = %BASE_MEDIA_PATH%/%ITEM_COLLECTION_NAME%/medium_artwork/screenshot
# media.screentitle   = %BASE_MEDIA_PATH%/%ITEM_COLLECTION_NAME%/medium_artwork/screentitle
# media.artwork_back  = %BASE_MEDIA_PATH%/%ITEM_COLLECTION_NAME%/medium_artwork/artwork_back
# media.artwork_front = %BASE_MEDIA_PATH%/%ITEM_COLLECTION_NAME%/medium_artwork/artwork_front
# media.logo          = %BASE_MEDIA_PATH%/%ITEM_COLLECTION_NAME%/medium_artwork/logo 
# media.medium_back   = %BASE_MEDIA_PATH%/%ITEM_COLLECTION_NAME%/medium_artwork/medium_back
# media.medium_front  = %BASE_MEDIA_PATH%/%ITEM_COLLECTION_NAME%/medium_artwork/medium_front
# media.screenshot    = %BASE_MEDIA_PATH%/%ITEM_COLLECTION_NAME%/medium_artwork/screenshot
# media.screentitle   = %BASE_MEDIA_PATH%/%ITEM_COLLECTION_NAME%/medium_artwork/screentitle
# media.video         = %BASE_MEDIA_PATH%/%ITEM_COLLECTION_NAME%/medium_artwork/video
###############################################################################

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Arcade.png /home/retro/MABE/collections/Arcades/system_artwork/logo.png 
echo "Arcades" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Arcade collection susefull create and activate ..." 30 55 ; sleep 2
}

function amiga_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Amiga" && touch /home/retro/MABE/launchers/amiga.conf
sudo cat > /home/retro/MABE/launchers/amiga.conf <<_EOF_
# Amiga - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/fsuae_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Amiga/settings.conf
touch /home/retro/MABE/collections/Amiga/settings.conf
sudo cat > /home/retro/MABE/collections/Amiga/settings.conf <<_EOF_
# Amiga - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,7z,adf,adz,dms,fdi,ipf,hdf,hdz,lha,slave,info,cue,ccd,nrg,mds,iso,chd,uae,m3u
list.menuSort = true
launcher = amiga
metadata.type = Commodore Amiga

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Commodore\ Amiga.png /home/retro/MABE/collections/Amiga/system_artwork/logo.png 
echo "Amiga" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Amiga collection susefull create and activate ..." 30 55 ; sleep 2
}

function amiga32cd_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Amiga 32 CD" && touch /home/retro/MABE/launchers/amiga32cd.conf
sudo cat > /home/retro/MABE/launchers/amiga32cd.conf <<_EOF_
# Amiga32cd - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/puae_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Amiga\ 32\ CD/settings.conf
touch /home/retro/MABE/collections/Amiga\ 32\ CD/settings.conf
sudo cat > /home/retro/MABE/collections/Amiga\ 32\ CD/settings.conf <<_EOF_
# Amiga32cd - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,7z,adf,adz,dms,fdi,ipf,hdf,hdz,lha,slave,info,cue,ccd,nrg,mds,iso,chd,uae,m3u
list.menuSort = true
launcher = amiga32cd
metadata.type = Commodore Amiga CD32

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Commodore\ Amiga\ CD32.png /home/retro/MABE/collections/Amiga\ 32\ CD/system_artwork/logo.png 
echo "Amiga 32 CD" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Amiga 32 cd collection susefull create and activate ..." 30 55 ; sleep 2
}

function apple2_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Apple II" && touch /home/retro/MABE/launchers/apple2.conf
sudo cat > /home/retro/MABE/launchers/apple2.conf <<_EOF_
# Apple II - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/minivmac_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Apple\ II/settings.conf
touch /home/retro/MABE/collections/Apple\ II/settings.conf
sudo cat > /home/retro/MABE/collections/Apple\ II/settings.conf <<_EOF_
# Apple II - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = dsk,img,zip,hvf,cmd
list.menuSort = true
launcher = apple2
metadata.type = Apple II

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Apple\ II.png /home/retro/MABE/collections/Apple\ II/system_artwork/logo.png 
echo "Apple II" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Apple II collection susefull create and activate ..." 30 55 ; sleep 2
}

function atari2600_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Atari 2600" && touch /home/retro/MABE/launchers/atari2600.conf
sudo cat > /home/retro/MABE/launchers/atari2600.conf <<_EOF_
# Atari 2600 - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/stella2014_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Atari\ 2600/settings.conf
touch /home/retro/MABE/collections/Atari\ 2600/settings.conf
sudo cat > /home/retro/MABE/collections/Atari\ 2600/settings.conf <<_EOF_
# Atari 2600 - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = a26,bin,zip,7z
list.menuSort = true
launcher = atari2600
metadata.type = Atari 2600

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Atari\ 2600.png /home/retro/MABE/collections/Atari\ 2600/system_artwork/logo.png 
echo "Atari 2600" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Atari 2600 collection susefull create and activate ..." 30 55 ; sleep 2
}


function atari5200_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Atari 5200" && touch /home/retro/MABE/launchers/atari5200.conf
sudo cat > /home/retro/MABE/launchers/atari5200.conf <<_EOF_
# Atari 5200 - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/a5200_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Atari\ 5200/settings.conf
touch /home/retro/MABE/collections/Atari\ 5200/settings.conf
sudo cat > /home/retro/MABE/collections/Atari\ 5200/settings.conf <<_EOF_
# Atari 5200 - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = a52,bin,zip,7z
list.menuSort = true
launcher = atari5200
metadata.type = Atari 5200

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Atari\ 5200.png /home/retro/MABE/collections/Atari\ 5200/system_artwork/logo.png 
echo "Atari 5200" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Atari 5200 collection susefull create and activate ..." 30 55 ; sleep 2
}


function atari7800_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Atari 7800" && touch /home/retro/MABE/launchers/atari7800.conf
sudo cat > /home/retro/MABE/launchers/atari7800.conf <<_EOF_
# Atari 7800 - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/prosystem_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Atari\ 7800/settings.conf
touch /home/retro/MABE/collections/Atari\ 7800/settings.conf
sudo cat > /home/retro/MABE/collections/Atari\ 7800/settings.conf <<_EOF_
# Atari 7800 - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = a78,bin,zip,7z
list.menuSort = true
launcher = atari7800
metadata.type = Atari 7800

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Atari\ 7800.png /home/retro/MABE/collections/Atari\ 7800/system_artwork/logo.png 
echo "Atari 7800" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Atari 7800 collection susefull create and activate ..." 30 55 ; sleep 2
}


function atarilinx_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Atari Lynx" && touch /home/retro/MABE/launchers/atarilinx.conf
sudo cat > /home/retro/MABE/launchers/atarilinx.conf <<_EOF_
# Atari Lynx - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/mednafen_lynx_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Atari\ Lynx/settings.conf
touch /home/retro/MABE/collections/Atari\ Lynx/settings.conf
sudo cat > /home/retro/MABE/collections/Atari\ Lynx/settings.conf <<_EOF_
# Atari Lynx - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = lnx,o,zip,7z
list.menuSort = true
launcher = atarilinx
metadata.type = Atari Lynx

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Atari\ Lynx.png /home/retro/MABE/collections/Atari\ Lynx/system_artwork/logo.png 
echo "Atari Lynx" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Atari Lynx collection susefull create and activate ..." 30 55 ; sleep 2
}


function atarist_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Atari ST" && touch /home/retro/MABE/launchers/atarist.conf
sudo cat > /home/retro/MABE/launchers/atarist.conf <<_EOF_
# Atari ST - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/hatari_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Atari\ ST/settings.conf
touch /home/retro/MABE/collections/Atari\ ST/settings.conf
sudo cat > /home/retro/MABE/collections/Atari\ ST/settings.conf <<_EOF_
# Atari ST - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = st,msa,zip,stx,dim,ipf,m3u
list.menuSort = true
launcher = atarist
metadata.type = Atari ST

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Atari\ ST.png /home/retro/MABE/collections/Atari\ ST/system_artwork/logo.png 
echo "Atari ST" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Atari ST collection susefull create and activate ..." 30 55 ; sleep 2
}


function wonderswan_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Bandai WonderSwan" && touch /home/retro/MABE/launchers/wonderswan.conf
sudo cat > /home/retro/MABE/launchers/wonderswan.conf <<_EOF_
# Bandai WonderSwan - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/mednafen_wswan_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Bandai\ WonderSwan/settings.conf
touch /home/retro/MABE/collections/Bandai\ WonderSwan/settings.conf
sudo cat > /home/retro/MABE/collections/Bandai\ WonderSwan/settings.conf <<_EOF_
# Bandai WonderSwan - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = ws,pc2,zip,7z
list.menuSort = true
launcher = wonderswan
metadata.type = Bandai WonderSwan

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/WonderSwan.png /home/retro/MABE/collections/Bandai\ WonderSwan/system_artwork/logo.png 
echo "Bandai WonderSwan" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Bandai WonderSwan collection susefull create and activate ..." 30 55 ; sleep 2
}


function wonderswanc_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Bandai WonderSwan Color" && touch /home/retro/MABE/launchers/wonderswanc.conf
sudo cat > /home/retro/MABE/launchers/wonderswanc.conf <<_EOF_
# Bandai WonderSwan Color - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/mednafen_wswan_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Bandai\ WonderSwan\ Color/settings.conf
touch /home/retro/MABE/collections/Bandai\ WonderSwan\ Color/settings.conf
sudo cat > /home/retro/MABE/collections/Bandai\ WonderSwan\ Color/settings.conf <<_EOF_
# Bandai WonderSwan Color - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = wsc,pc2,zip,7z
list.menuSort = true
launcher = wonderswanc
metadata.type = Bandai WonderSwan Color

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Wonderswan\ Color.png /home/retro/MABE/collections/Bandai\ WonderSwan\ Color/system_artwork/logo.png 
echo "Bandai WonderSwan Color" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Bandai WonderSwan Color collection susefull create and activate ..." 30 55 ; sleep 2
}


function casiopv1000_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Casio PV-1000" && touch /home/retro/MABE/launchers/casiopv1000.conf
sudo cat > /home/retro/MABE/launchers/casiopv1000.conf <<_EOF_
# Casio PV-1000 - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Casio\ PV-1000/settings.conf
touch /home/retro/MABE/collections/Casio\ PV-1000/settings.conf
sudo cat > /home/retro/MABE/collections/Casio\ PV-1000/settings.conf <<_EOF_
# Casio PV-1000 - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = a26,bin,zip,7z
list.menuSort = true
launcher = casiopv1000
metadata.type = Casio PV-1000

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Casio\ PV-1000.png /home/retro/MABE/collections/Casio\ PV-1000/system_artwork/logo.png 
echo "Casio PV-1000" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Casio PV-1000 collection susefull create and activate ..." 30 55 ; sleep 2
}


function casiopv2000_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Casio PV-2000" && touch /home/retro/MABE/launchers/casiopv2000.conf
sudo cat > /home/retro/MABE/launchers/casiopv2000.conf <<_EOF_
# Casio PV-2000 - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Casio\ PV-2000/settings.conf
touch /home/retro/MABE/collections/Casio\ PV-2000/settings.conf
sudo cat > /home/retro/MABE/collections/Casio\ PV-2000/settings.conf <<_EOF_
# Casio PV-2000 - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = a26,bin,zip,7z
list.menuSort = true
launcher = casiopv2000
metadata.type = Casio PV-2000

_EOF_
# ADD TO MAIN MENU
#cp /home/retro/Rpi_Retro64/configs/C_logos/American\ Laser\ Games.png /home/retro/MABE/collections/American\ Laser\ Games/system_artwork/logo.png 
echo "Casio PV-2000" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Casio PV-2000 collection susefull create and activate ..." 30 55 ; sleep 2
}


function daphne_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Daphne" && touch /home/retro/MABE/launchers/daphne.conf
sudo cat > /home/retro/MABE/launchers/daphne.conf <<_EOF_
# Daphne - Generate config by MabeDeep 
executable = /home/retro/MABE/emulators/daphne/daphne.sh
arguments = "%ITEM_FILENAME%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Daphne/settings.conf
touch /home/retro/MABE/collections/Daphne/settings.conf
sudo cat > /home/retro/MABE/collections/Daphne/settings.conf <<_EOF_
# Daphne - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip
list.menuSort = true
launcher = daphne
metadata.type = Daphne

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Daphne.png /home/retro/MABE/collections/Daphne/system_artwork/logo.png  
echo "Daphne" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Daphne collection susefull create and activate ..." 30 55 ; sleep 2
}


function fbalpha_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Final Burn Alpha" && touch /home/retro/MABE/launchers/fbalpha.conf
sudo cat > /home/retro/MABE/launchers/fbalpha.conf <<_EOF_
# Final Burn Alpha - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/fbalpha_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Final\ Burn\ Alpha/settings.conf
touch /home/retro/MABE/collections/Final\ Burn\ Alpha/settings.conf
sudo cat > /home/retro/MABE/collections/Final\ Burn\ Alpha/settings.conf <<_EOF_
# Final Burn Alpha - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,7z,ccd,sub,img,iso,MODE1,2352,bin,cue
list.menuSort = true
launcher = fbalpha
metadata.type = Final Burn Alpha

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Final\ Burn\ Alpha.png /home/retro/MABE/collections/Final\ Burn\ Alpha/system_artwork/logo.png 
echo "Final Burn Alpha" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Final Burn Alpha collection susefull create and activate ..." 30 55 ; sleep 2
}


function fbneo_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Final Burn Neo" && touch /home/retro/MABE/launchers/fbneo.conf
sudo cat > /home/retro/MABE/launchers/fbneo.conf <<_EOF_
# Final Burn Neo - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/fbneo_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Final\ Burn\ Neo/settings.conf
touch /home/retro/MABE/collections/Final\ Burn\ Neo/settings.conf
sudo cat > /home/retro/MABE/collections/Final\ Burn\ Neo/settings.conf <<_EOF_
# Final Burn Neo - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,7z,cue,ccd
list.menuSort = true
launcher = fbneo
metadata.type = Final Burn Neo

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Final\ Burn\ Neo.png /home/retro/MABE/collections/Final\ Burn\ Neo/system_artwork/logo.png 
echo "Final Burn Neo" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Final Burn Neo collection susefull create and activate ..." 30 55 ; sleep 2
}


function vectrex_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "GCE Vectrex" && touch /home/retro/MABE/launchers/vectrex.conf
sudo cat > /home/retro/MABE/launchers/vectrex.conf <<_EOF_
# GCE Vectrex - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/vecx_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/GCE\ Vectrex/settings.conf
touch /home/retro/MABE/collections/GCE\ Vectrex/settings.conf
sudo cat > /home/retro/MABE/collections/GCE\ Vectrex/settings.conf <<_EOF_
# GCE Vectrex - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,7z,bin,vec
list.menuSort = true
launcher = vectrex
metadata.type = GCE Vectrex

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/GCE\ Vectrex.png /home/retro/MABE/collections/GCE\ Vectrex/system_artwork/logo.png 
echo "GCE Vectrex" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... GCE Vectrex collection susefull create and activate ..." 30 55 ; sleep 2
}


function msdos_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Microsoft MS-DOS" && touch /home/retro/MABE/launchers/msdos.conf
sudo cat > /home/retro/MABE/launchers/msdos.conf <<_EOF_
# Microsoft MS-DOS - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/dosbox_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Microsoft\ MS-DOS/settings.conf
touch /home/retro/MABE/collections/Microsoft\ MS-DOS/settings.conf
sudo cat > /home/retro/MABE/collections/Microsoft\ MS-DOS/settings.conf <<_EOF_
# Microsoft MS-DOS - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = exe,com,bat,conf
list.menuSort = true
launcher = msdos
metadata.type = Microsoft MS-DOS

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/MS-DOS.png /home/retro/MABE/collections/Microsoft\ MS-DOS/system_artwork/logo.png 
echo "Microsoft MS-DOS" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Microsoft MS-DOS collection susefull create and activate ..." 30 55 ; sleep 2
}


function msx_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Microsoft MSX" && touch /home/retro/MABE/launchers/msx.conf
sudo cat > /home/retro/MABE/launchers/msx.conf <<_EOF_
# Microsoft MSX - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/bluemsx_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Microsoft\ MSX/settings.conf
touch /home/retro/MABE/collections/Microsoft\ MSX/settings.conf
sudo cat > /home/retro/MABE/collections/Microsoft\ MSX/settings.conf <<_EOF_
# Microsoft MSX - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = rom,ri,mx1,col,dsk,cas,sg,sc,m3u,zip
list.menuSort = true
launcher = msx
metadata.type = Microsoft MSX

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Microsoft\ MSX.png /home/retro/MABE/collections/Microsoft\ MSX/system_artwork/logo.png 
echo "Microsoft MSX" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Microsoft MSX collection susefull create and activate ..." 30 55 ; sleep 2
}


function msx2_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Microsoft MSX2" && touch /home/retro/MABE/launchers/msx2.conf
sudo cat > /home/retro/MABE/launchers/msx2.conf <<_EOF_
# Microsoft MSX2 - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/bluemsx_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Microsoft\ MSX2/settings.conf
touch /home/retro/MABE/collections/Microsoft\ MSX2/settings.conf
sudo cat > /home/retro/MABE/collections/Microsoft\ MSX2/settings.conf <<_EOF_
# Microsoft MSX2 - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = rom,ri,mx2,col,dsk,cas,sg,sc,m3u,zip
list.menuSort = true
launcher = msx2
metadata.type = Microsoft MSX2

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Microsoft\ MSX2.png /home/retro/MABE/collections/Microsoft\ MSX2/system_artwork/logo.png 
echo "Microsoft MSX2" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Microsoft MSX2 collection susefull create and activate ..." 30 55 ; sleep 2
}


function pcengine_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "NEC PC Engine" && touch /home/retro/MABE/launchers/pcengine.conf
sudo cat > /home/retro/MABE/launchers/pcengine.conf <<_EOF_
# NEC PC Engine - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/mednafen_pce_fast_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/NEC\ PC\ Engine/settings.conf
touch /home/retro/MABE/collections/NEC\ PC\ Engine/settings.conf
sudo cat > /home/retro/MABE/collections/NEC\ PC\ Engine/settings.conf <<_EOF_
# NEC PC Engine - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,7z,pce
list.menuSort = true
launcher = pcengine
metadata.type = NEC PC Engine

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/NEC\ PC\ Engine.png /home/retro/MABE/collections/NEC\ PC\ Engine/system_artwork/logo.png 
echo "NEC PC Engine" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... NEC PC Engine collection susefull create and activate ..." 30 55 ; sleep 2
}


function pcenginecd_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "NEC PC Engine-CD" && touch /home/retro/MABE/launchers/pcenginecd.conf
sudo cat > /home/retro/MABE/launchers/pcenginecd.conf <<_EOF_
# NEC PC Engine-CD - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/mednafen_pce_fast_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/NEC\ PC\ Engine-CD/settings.conf
touch /home/retro/MABE/collections/NEC\ PC\ Engine-CD/settings.conf
sudo cat > /home/retro/MABE/collections/NEC\ PC\ Engine-CD/settings.conf <<_EOF_
# NEC PC Engine-CD - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,7z,cue,ccd,chd,toc,m3u
list.menuSort = true
launcher = pcenginecd
metadata.type = NEC PC Engine-CD

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/NEC\ PC\ Engine-CD.png /home/retro/MABE/collections/NEC\ PC\ Engine-CD/system_artwork/logo.png 
echo "NEC PC Engine-CD" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... NEC PC Engine-CD collection susefull create and activate ..." 30 55 ; sleep 2
}


function supergraftx_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "NEC SuperGrafx" && touch /home/retro/MABE/launchers/supergraftx.conf
sudo cat > /home/retro/MABE/launchers/supergraftx.conf <<_EOF_
# NEC SuperGrafx - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/mednafen_supergrafx_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/NEC\ SuperGrafx/settings.conf
touch /home/retro/MABE/collections/NEC\ SuperGrafx/settings.conf
sudo cat > /home/retro/MABE/collections/NEC\ SuperGrafx/settings.conf <<_EOF_
# NEC SuperGrafx - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,7z,pce,sgx,cue,ccd,chd
list.menuSort = true
launcher = supergraftx
metadata.type = NEC SuperGrafx

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/NEC\ SuperGrafx.png /home/retro/MABE/collections/NEC\ SuperGrafx/system_artwork/logo.png 
echo "NEC SuperGrafx" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... NEC SuperGrafx collection susefull create and activate ..." 30 55 ; sleep 2
}


#@ - new collections #################################################>>>>>>>>
function n64_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Nintendo 64" && touch /home/retro/MABE/launchers/n64.conf
sudo cat > /home/retro/MABE/launchers/n64.conf <<_EOF_
# Nintendo 64 - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/mupen64plus_next_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Nintendo\ 64/settings.conf
touch /home/retro/MABE/collections/Nintendo\ 64/settings.conf
sudo cat > /home/retro/MABE/collections/Nintendo\ 64/settings.conf <<_EOF_
# Nintendo 64 - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,7z,n64
list.menuSort = true
launcher = n64
metadata.type = Nintendo 64

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Nintendo\ 64.png /home/retro/MABE/collections/Nintendo\ 64/system_artwork/logo.png 
echo "Nintendo 64" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Nintendo 64 collection susefull create and activate ..." 30 55 ; sleep 2
}


function nes_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Nintendo Entertainment System" && touch /home/retro/MABE/launchers/nes.conf
sudo cat > /home/retro/MABE/launchers/nes.conf <<_EOF_
# Nintendo Entertainment System - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/nestopia_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Nintendo\ Entertainment\ System/settings.conf
touch /home/retro/MABE/collections/Nintendo\ Entertainment\ System/settings.conf
sudo cat > /home/retro/MABE/collections/Nintendo\ Entertainment\ System/settings.conf <<_EOF_
# Nintendo Entertainment System - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,7z
list.menuSort = true
launcher = nes
metadata.type = Nintendo Entertainment System

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Nintendo\ Entertainment\ System.png /home/retro/MABE/collections/Nintendo\ Entertainment\ System/system_artwork/logo.png 
echo "Nintendo Entertainment System" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Nintendo Entertainment System collection susefull create and activate ..." 30 55 ; sleep 2
}


function snes_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Super Nintendo Entertainment System" && touch /home/retro/MABE/launchers/snes.conf
sudo cat > /home/retro/MABE/launchers/snes.conf <<_EOF_
# Super Nintendo Entertainment System - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/snes9x_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Super\ Nintendo\ Entertainment\ System/settings.conf
touch /home/retro/MABE/collections/Super\ Nintendo\ Entertainment\ System/settings.conf
sudo cat > /home/retro/MABE/collections/Super\ Nintendo\ Entertainment\ System/settings.conf <<_EOF_
# Super Nintendo Entertainment System - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,7z
list.menuSort = true
launcher = snes
metadata.type = Super Nintendo Entertainment System

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Super\ Nintendo\ Entertainment\ System.png /home/retro/MABE/collections/Super\ Nintendo\ Entertainment\ System/system_artwork/logo.png 
echo "Super Nintendo Entertainment System" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Super Nintendo Entertainment System collection susefull create and activate ..." 30 55 ; sleep 2
}


function gb_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Nintendo Game Boy" && touch /home/retro/MABE/launchers/gb.conf
sudo cat > /home/retro/MABE/launchers/gb.conf <<_EOF_
# Nintendo Game Boy - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/gambatte_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Nintendo\ Game\ Boy/settings.conf
touch /home/retro/MABE/collections/Nintendo\ Game\ Boy/settings.conf
sudo cat > /home/retro/MABE/collections/Nintendo\ Game\ Boy/settings.conf <<_EOF_
# Nintendo Game Boy - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,7z
list.menuSort = true
launcher = gb
metadata.type = Nintendo Game Boy

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Nintendo\ Game\ Boy.png /home/retro/MABE/collections/Nintendo\ Game\ Boy/system_artwork/logo.png 
echo "Nintendo Game Boy" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Nintendo Game Boy collection susefull create and activate ..." 30 55 ; sleep 2
}


function gba_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Nintendo Game Boy Advance" && touch /home/retro/MABE/launchers/gba.conf
sudo cat > /home/retro/MABE/launchers/gba.conf <<_EOF_
# Nintendo Game Boy Advance - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/mednafen_gba_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Nintendo\ Game\ Boy\ Advance/settings.conf
touch /home/retro/MABE/collections/Nintendo\ Game\ Boy\ Advance/settings.conf
sudo cat > /home/retro/MABE/collections/Nintendo\ Game\ Boy\ Advance/settings.conf <<_EOF_
# Nintendo Game Boy Advance - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,7z,gba,agb,bin
list.menuSort = true
launcher = gba
metadata.type = Nintendo Game Boy Advance

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Nintendo\ Game\ Boy\ Advance.png /home/retro/MABE/collections/Nintendo\ Game\ Boy\ Advance/system_artwork/logo.png 
echo "Nintendo Game Boy Advance" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Nintendo Game Boy Advance collection susefull create and activate ..." 30 55 ; sleep 2
}


function gbc_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Nintendo Game Boy Color" && touch /home/retro/MABE/launchers/gbc.conf
sudo cat > /home/retro/MABE/launchers/gbc.conf <<_EOF_
# Nintendo Game Boy Color - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/gambatte_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Nintendo\ Game\ Boy\ Color/settings.conf
touch /home/retro/MABE/collections/Nintendo\ Game\ Boy\ Color/settings.conf
sudo cat > /home/retro/MABE/collections/Nintendo\ Game\ Boy\ Color/settings.conf <<_EOF_
# Nintendo Game Boy Color - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,7z
list.menuSort = true
launcher = gbc
metadata.type = Nintendo Game Boy Color

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Nintendo\ Game\ Boy\ Color.png /home/retro/MABE/collections/Nintendo\ Game\ Boy\ Color/system_artwork/logo.png 
echo "Nintendo Game Boy Color" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Nintendo Game Boy Color collection susefull create and activate ..." 30 55 ; sleep 2
}


function 3do_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Panasonic 3DO" && touch /home/retro/MABE/launchers/3do.conf
sudo cat > /home/retro/MABE/launchers/3do.conf <<_EOF_
# Panasonic 3DO - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/4do_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Panasonic\ 3DO/settings.conf
touch /home/retro/MABE/collections/Panasonic\ 3DO/settings.conf
sudo cat > /home/retro/MABE/collections/Panasonic\ 3DO/settings.conf <<_EOF_
# Panasonic 3DO - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,7z,iso,bin,chd,cue
list.menuSort = true
launcher = 3do
metadata.type = Panasonic 3DO

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Panasonic\ 3DO.png /home/retro/MABE/collections/Panasonic\ 3DO/system_artwork/logo.png 
echo "Panasonic 3DO" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Panasonic 3DO collection susefull create and activate ..." 30 55 ; sleep 2
}


function atomiswave_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Sammy Atomiswave" && touch /home/retro/MABE/launchers/atomiswave.conf
sudo cat > /home/retro/MABE/launchers/atomiswave.conf <<_EOF_
# Sammy Atomiswave - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/flycast_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Sammy\ Atomiswave/settings.conf
touch /home/retro/MABE/collections/Sammy\ Atomiswave/settings.conf
sudo cat > /home/retro/MABE/collections/Sammy\ Atomiswave/settings.conf <<_EOF_
# Sammy Atomiswave - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,7z,chd
list.menuSort = true
launcher = atomiswave
metadata.type = Sammy Atomiswave

_EOF_
# ADD TO MAIN MENU
cp /home/retro/Rpi_Retro64/configs/C_logos/Sammy\ Atomiswave.png /home/retro/MABE/collections/Sammy\ Atomiswave/system_artwork/logo.png 
echo "Sammy Atomiswave" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Sammy Atomiswave collection susefull create and activate ..." 30 55 ; sleep 2
}


function openbor_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "OpenBOR" && touch /home/retro/MABE/launchers/openbor.conf
sudo cat > /home/retro/MABE/launchers/openbor.conf <<_EOF_
# OpenBOR - Generate config by MabeDeep 
executable = /home/retro/MABE/emulators/
arguments = "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/OpenBOR/settings.conf
touch /home/retro/MABE/collections/OpenBOR/settings.conf
sudo cat > /home/retro/MABE/collections/OpenBOR/settings.conf <<_EOF_
# OpenBOR - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,sh,bor
list.menuSort = true
launcher = openbor
metadata.type = OpenBOR

_EOF_
# ADD TO MAIN MENU - ADD LOGO
cp /home/retro/Rpi_Retro64/configs/C_logos/openbor.png /home/retro/MABE/collections/OpenBOR/system_artwork/logo.png
echo "OpenBOR" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... OpenBOR collection susefull create and activate ..." 30 55 ; sleep 2
}


function scummvm_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "ScummVM" && touch /home/retro/MABE/launchers/scummvm.conf
sudo cat > /home/retro/MABE/launchers/scummvm.conf <<_EOF_
# ScummVM - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/scummvm_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/ScummVM/settings.conf
touch /home/retro/MABE/collections/ScummVM/settings.conf
sudo cat > /home/retro/MABE/collections/ScummVM/settings.conf <<_EOF_
# ScummVM - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = 0,1,2,3,4,5,6,8,25,99,101,102,455,512,scummvm,scumm,gam,z5,dat,blb,z6,ROM,001,taf,zblorb,dcp,(a),cup,HE0,(A),D$$,STK,z8,hex,ITK,CD1,pic,Z5,z3,blorb,ulx,DAT,cas,CGA,PIC,acd,SYS,OVL,alr,t3,gblorb,tab,AP,CRC,EXE,z4,W32,MAC,mac,WIN,003,000,exe,asl,slg,AVD,INI,SND,cat,ANG,CUP,SYS16,img,LB,TLK,MIX,RLB,#02,FNT,win,HE1,DMU,FON,SCR,MAP,TEX,HEP,DIR,DRV,a3c,GRV,CUR,CC,COD,OPT,LA0,gfx,GDA,ASK,LNG,ini,W16,SPP,bin,BND,BUN,TRS,add,HRS,DFW,BIN,STR,DR1,ALD,004,002,005,006,R02,R00,C00,D00,GAM,SCN,IDX,ogg,TXT,VB,GRA,BAT,BMV,H$$,MSG,VGA,PKD,SAV,CPS,PAK,SHP,PAT,dxr,gmp,SNG,C35,C06,WAV,wav,CAB,game,CG1,(b),he2,he1,HE2,SYN,nl,PRC,V56,SEQ,P56,FKR,EX1,rom,CRF,LIC,$00,ALL,txt,acx,nbf,VXD,lab,LAB,ACX,mpc,msd,ADF,nib,HELLO,dsk,xfd,woz,d$$,SET,SOL,Pat,CFG,BSF,RES,CLT,LFL,SQU,RSC,SOUND,rsc,2 US,sub,cel,OVR,007,pat,MDT,CHK,EMC,ADV,voc,FDT,VQA,info,HPF,HQR,CSC,HEB,MID,LEC,QA,009,VMD,EGA,MHK,d64,prg,lfl,LZC,NL,DXR,flac,IMS,m4b,M4B,MOR,doc,jpg,HAG,AGA,BLB,PAL,PRG,CLG,CNF,ORB,BRO,bro,avi,str,PH1,DEF,sym,OUT,IN,TOC,AUD,j2,Text,CEL,AVI,1C,1c,L9,HRC,mhk,LIB,RED,PMV,SM0,SM1,RRM,CAT,CNV,GME,VOC,OGG,GERMAN,SHR,FRENCH,DNR,DSK,dnr,MMM,z4f,025,he0,V16,vga,TAB,CLU,b25c,INF,RL,mp3,SOU,SOG,HEX,mma,st,sdb,cab,MPC,MS0,IMG,ENC,C,GRP,PAR,PGM,Z,RL2,OBJ,ZFS,zfs,zip,z2,z1
list.menuSort = true
launcher = scummvm
metadata.type = ScummVM

_EOF_
# ADD TO MAIN MENU - ADD LOGO
cp /home/retro/Rpi_Retro64/configs/C_logos/ScummVM.png /home/retro/MABE/collections/ScummVM/system_artwork/logo.png
echo "ScummVM" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... ScummVM collection susefull create and activate ..." 30 55 ; sleep 2
}

function 32x_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Sega 32X" && touch /home/retro/MABE/launchers/32x.conf
sudo cat > /home/retro/MABE/launchers/32x.conf <<_EOF_
# Sega 32X - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/picodrive_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Sega\ 32X/settings.conf
touch /home/retro/MABE/collections/Sega\ 32X/settings.conf
sudo cat > /home/retro/MABE/collections/Sega\ 32X/settings.conf <<_EOF_
# Sega 32X - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,7z,32x
list.menuSort = true
launcher = 32x
metadata.type = Sega 32X

_EOF_
# ADD TO MAIN MENU - ADD LOGO
cp /home/retro/Rpi_Retro64/configs/C_logos/Sega\ 32X.png /home/retro/MABE/collections/Sega\ 32X/system_artwork/logo.png
echo "Sega 32X" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Sega 32X collection susefull create and activate ..." 30 55 ; sleep 2
}


function megacd_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Sega CD" && touch /home/retro/MABE/launchers/megacd.conf
sudo cat > /home/retro/MABE/launchers/megacd.conf <<_EOF_
# Sega CD - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/genesis_plus_gx_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Sega\ CD/settings.conf
touch /home/retro/MABE/collections/Sega\ CD/settings.conf
sudo cat > /home/retro/MABE/collections/Sega\ CD/settings.conf <<_EOF_
# Sega CD - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,chd,7z
list.menuSort = true
launcher = megacd
metadata.type = Sega CD

_EOF_
# ADD TO MAIN MENU - ADD LOGO
cp /home/retro/Rpi_Retro64/configs/C_logos/Sega\ Mega\ CD.png /home/retro/MABE/collections/Sega\ CD/system_artwork/logo.png
echo "Sega CD" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Sega CD collection susefull create and activate ..." 30 55 ; sleep 2
}

function dreamcast_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Sega Dreamcast" && touch /home/retro/MABE/launchers/dreamcast.conf
sudo cat > /home/retro/MABE/launchers/dreamcast.conf <<_EOF_
# Sega Dreamcast - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/flycast_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Sega\ Dreamcast/settings.conf
touch /home/retro/MABE/collections/Sega\ Dreamcast/settings.conf
sudo cat > /home/retro/MABE/collections/Sega\ Dreamcast/settings.conf <<_EOF_
# Sega Dreamcast - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,7z,chd
list.menuSort = true
launcher = dreamcast
metadata.type = Sega Dreamcast

_EOF_
# ADD TO MAIN MENU - ADD LOGO
cp /home/retro/Rpi_Retro64/configs/C_logos/Sega\ Dreamcast.png /home/retro/MABE/collections/Sega\ Dreamcast/system_artwork/logo.png
echo "Sega Dreamcast" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Sega Dreamcast collection susefull create and activate ..." 30 55 ; sleep 2
}

function gamegear_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Sega Game Gear" && touch /home/retro/MABE/launchers/gamegear.conf
sudo cat > /home/retro/MABE/launchers/gamegear.conf <<_EOF_
# Sega Game Gear - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/gearsystem_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Sega\ Game\ Gear/settings.conf
touch /home/retro/MABE/collections/Sega\ Game\ Gear/settings.conf
sudo cat > /home/retro/MABE/collections/Sega\ Game\ Gear/settings.conf <<_EOF_
# Sega Game Gear - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,7z,gg
list.menuSort = true
launcher = gamegear
metadata.type = Sega Game Gear

_EOF_
# ADD TO MAIN MENU - ADD LOGO
cp /home/retro/Rpi_Retro64/configs/C_logos/Sega\ Game\ Gear.png /home/retro/MABE/collections/Sega\ Game\ Gear/system_artwork/logo.png
echo "Sega Game Gear" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Sega Game Gear collection susefull create and activate ..." 30 55 ; sleep 2
}


function genesis_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Sega Genesis" && touch /home/retro/MABE/launchers/genesis.conf
sudo cat > /home/retro/MABE/launchers/genesis.conf <<_EOF_
# Sega Genesis - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/genesis_plus_gx_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Sega\ Genesis/settings.conf
touch /home/retro/MABE/collections/Sega\ Genesis/settings.conf
sudo cat > /home/retro/MABE/collections/Sega\ Genesis/settings.conf <<_EOF_
# Sega Genesis - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,7z,md
list.menuSort = true
launcher = genesis
metadata.type = Sega Genesis

_EOF_
# ADD TO MAIN MENU - ADD LOGO
cp /home/retro/Rpi_Retro64/configs/C_logos/Sega\ Genesis.png /home/retro/MABE/collections/Sega\ Genesis/system_artwork/logo.png
echo "Sega Genesis" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Sega Genesis collection susefull create and activate ..." 30 55 ; sleep 2
}


function mastersystem_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Sega Master System" && touch /home/retro/MABE/launchers/mastersystem.conf
sudo cat > /home/retro/MABE/launchers/mastersystem.conf <<_EOF_
# Sega Master System - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/smsplus_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Sega\ Master\ System/settings.conf
touch /home/retro/MABE/collections/Sega\ Master\ System/settings.conf
sudo cat > /home/retro/MABE/collections/Sega\ Master\ System/settings.conf <<_EOF_
# Sega Master System - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,sh
list.menuSort = true
launcher = mastersystem
metadata.type = Sega Master System

_EOF_
# ADD TO MAIN MENU - ADD LOGO
cp /home/retro/Rpi_Retro64/configs/C_logos/Sega\ Master\ System.png /home/retro/MABE/collections/Sega\ Master\ System/system_artwork/logo.png
echo "Sega Master System" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Sega Master System collection susefull create and activate ..." 30 55 ; sleep 2
}

function naomi_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Sega Naomi" && touch /home/retro/MABE/launchers/naomi.conf
sudo cat > /home/retro/MABE/launchers/naomi.conf <<_EOF_
# Sega Naomi - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/flycast_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Sega\ Naomi/settings.conf
touch /home/retro/MABE/collections/Sega\ Naomi/settings.conf
sudo cat > /home/retro/MABE/collections/Sega\ Naomi/settings.conf <<_EOF_
# Sega Naomi - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,chd,7z
list.menuSort = true
launcher = naomi
metadata.type = Sega Naomi

_EOF_
# ADD TO MAIN MENU - ADD LOGO
cp /home/retro/Rpi_Retro64/configs/C_logos/Sega\ Naomi.png /home/retro/MABE/collections/Sega\ Naomi/system_artwork/logo.png
echo "Sega Naomi" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Sega Naomi collection susefull create and activate ..." 30 55 ; sleep 2
}

function zxspectrum_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Sinclair ZX Spectrum" && touch /home/retro/MABE/launchers/zxspectrum.conf
sudo cat > /home/retro/MABE/launchers/zxspectrum.conf <<_EOF_
# Sinclair ZX Spectrum - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/fuse_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Sinclair\ ZX\ Spectrum/settings.conf
touch /home/retro/MABE/collections/Sinclair\ ZX\ Spectrum/settings.conf
sudo cat > /home/retro/MABE/collections/Sinclair\ ZX\ Spectrum/settings.conf <<_EOF_
# Sinclair ZX Spectrum - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,7z
list.menuSort = true
launcher = zxspectrum
metadata.type = Sinclair ZX Spectrum

_EOF_
# ADD TO MAIN MENU - ADD LOGO
cp /home/retro/Rpi_Retro64/configs/C_logos/Sinclair\ ZX\ Spectrum.png /home/retro/MABE/collections/Sinclair\ ZX\ Spectrum/system_artwork/logo.png
echo "Sinclair ZX Spectrum" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Sinclair ZX Spectrum collection susefull create and activate ..." 30 55 ; sleep 2
}

function neogeo_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "SNK Neo Geo" && touch /home/retro/MABE/launchers/neogeo.conf
sudo cat > /home/retro/MABE/launchers/neogeo.conf <<_EOF_
# SNK Neo Geo - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/fbneo_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/SNK\ Neo\ Geo/settings.conf
touch /home/retro/MABE/collections/SNK\ Neo\ Geo/settings.conf
sudo cat > /home/retro/MABE/collections/SNK\ Neo\ Geo/settings.conf <<_EOF_
# SNK Neo Geo MVS - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = zip,7z
list.menuSort = true
launcher = neogeo
metadata.type = SNK Neo Geo

_EOF_
# ADD TO MAIN MENU - ADD LOGO
cp /home/retro/Rpi_Retro64/configs/C_logos/SNK\ Neo\ Geo.png /home/retro/MABE/collections/SNK\ Neo\ Geo/system_artwork/logo.png
echo "SNK Neo Geo" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... SNK Neo Geo collection susefull create and activate ..." 30 55 ; sleep 2
}


function neogeocd_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "SNK Neo Geo CD" && touch /home/retro/MABE/launchers/neogeocd.conf
sudo cat > /home/retro/MABE/launchers/neogeocd.conf <<_EOF_
# SNK Neo Geo CD - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/neocd_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/SNK\ Neo\ Geo\ CD/settings.conf
touch /home/retro/MABE/collections/SNK\ Neo\ Geo\ CD/settings.conf
sudo cat > /home/retro/MABE/collections/SNK\ Neo\ Geo\ CD/settings.conf <<_EOF_
# SNK Neo Geo CD - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = chd
list.menuSort = true
launcher = neogeocd
metadata.type = SNK Neo Geo CD

_EOF_
# ADD TO MAIN MENU - ADD LOGO
cp /home/retro/Rpi_Retro64/configs/C_logos/SNK\ Neo\ Geo\ CD.png /home/retro/MABE/collections/SNK\ Neo\ Geo\ CD/system_artwork/logo.png
echo "SNK Neo Geo CD" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... SNK Neo Geo CD collection susefull create and activate ..." 30 55 ; sleep 2
}

function psx_creator() { 
# Directrio base no tocar #
###########################
cd /home/retro/MABE/  #
###########################
# CREATE COLLECTION AND CONFIGURE LAUNCHER                                         
./retrofe -createcollection "Sony PlayStation" && touch /home/retro/MABE/launchers/psx.conf
sudo cat > /home/retro/MABE/launchers/psx.conf <<_EOF_
# Sony PlayStation - Generate config by MabeDeep 
executable = retroarch
arguments = -L /home/retro/.config/retroarch/cores/duckstation_libretro.so "%ITEM_FILEPATH%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Sony\ PlayStation/settings.conf
touch /home/retro/MABE/collections/Sony\ PlayStation/settings.conf
sudo cat > /home/retro/MABE/collections/Sony\ PlayStation/settings.conf <<_EOF_
# Sony PlayStation - Generate settings by MabeDeep 
#list.path = %BASE_ITEM_PATH%/%ITEM_COLLECTION_NAME%/roms
list.includeMissingItems = true
# Extensions are comma separated without spaces
list.extensions = pbp,chd,iso,img
list.menuSort = true
launcher = psx
metadata.type = Sony PlayStation

_EOF_
# ADD TO MAIN MENU - ADD LOGO
cp /home/retro/Rpi_Retro64/configs/C_logos/Sony\ Playstation.png /home/retro/MABE/collections/Sony\ PlayStation/system_artwork/logo.png
echo "Sony PlayStation" >> /home/retro/MABE/collections/Main/menu.txt
dialog --infobox "... Sony PlayStation collection susefull create and activate ..." 30 55 ; sleep 2
}


main_menu