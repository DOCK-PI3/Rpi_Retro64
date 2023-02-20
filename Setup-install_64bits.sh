#!/bin/bash
#set -o xtrace # Realiza una traza de lo que se ha ejecutado. Es para depurar ,ver donde y porque se está produciendo un error.
#set -o errexit # Se sale del script inmediatamente cuando falla un comando.
##############################################################|>
# 
#    *                       (                       
#  (  `             )        )\ )                    
#  )\))(      )  ( /(    (  (()/(     (    (         
# ((_)()\  ( /(  )\())  ))\  /(_))   ))\  ))\ `  )   
# (_()((_) )(_))((_)\  /((_)(_))_   /((_)/((_)/(/(   
# |  \/  |((_)_ | |(_)(_))   |   \ (_)) (_)) ((_)_\  
# | |\/| |/ _` || '_ \/ -_)  | |) |/ -_)/ -_)| '_ \) 
# |_|  |_|\__,_||_.__/\___|  |___/ \___|\___|| .__/  
#                                            |_|     
#  
#   _____________________________________________________
##############################################################|>                                                          
# check root, not permited !
if [ "$EUID" -eq 0 ]
  then echo "Don't run script as root."
  exit
fi
# check home user retro
check_io=/home/retro/
if [ -d "$check_io" ] 
then
    echo "Directory $check_io exists" 
else
    echo "Directory $check_io does not exist"
    exit
fi
# check dependencies and install
if [[ -f /usr/bin/git ]] && [[ -f /usr/bin/dialog ]]
then
  echo "Dependencies detected successfully!"
  else
    echo "Installing dependencies!"
    sudo apt update && sudo apt install -y git dialog build-essential
fi

# meta , check dir collection , menu , all ...

version=" 3.0"
infobox="${infobox}\n_______________________________________________________\n\n"
infobox="${infobox}\n MABE_TOOL only use VIP .....\n\n Rpi_64Bits: Installer of multiple tools and utilities .....\n"
infobox="${infobox}\n\n_______________________________________________________\n\n"
infobox="${infobox}\n Available to install:\n\nRetroFE ,RetroArch 1.10.3 more bios and several cores\n\n Tool RPi-MONITOR, GAMEMODE, Daphne emulator and silence boot mode."
infobox="${infobox}\n\n\n_______________________________________________________\n\n"
dialog --backtitle "Version de la aplicacion: $version - Multi-instalador de Herramientas y utils" \
--title "Instalator for FrontEnd, drivers, Libs, Emulators, cores y utils for rpi 4b (by MABEDEEP)" \
--msgbox "${infobox}" 35 110

function main_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " MAIN MENU " \
            --ok-label OK --cancel-label Exit \
            --menu " - Version:$version - Recomended use BullsEye Lite 64bit\n - You Username:$USER" 25 75 20 \
			100 "--- EASY-INSTALL RETROFE,RETROARCH,CORES,EMULATORS,FIXES,CONFIGs,ect, ---" \
			100 "-----------------------------------------------------------------" \
			67 "Rpi4 - 1º install RetroFE FrontEnd" \
			100 "-----------------------------------------------------------------" \
			69 "Rpi4 - 2º Install GameMode 1.6.x - OPTIONAL" \
			100 "-----------------------------------------------------------------" \
			70 "Rpi4 - 3º Install Retroarch 1.10.3" \
			100 "-----------------------------------------------------------------" \
			100 "-------------- UTILS AND TWEAKS ---------------------------" \
			78 "Rpi4 - Install Silence boot in Bullseyes by Moriggy - RECOMENDED" \
			80 "Rpi4 - Install RPi Monitor - OPTIONAL" \
			100 "-----------------------------------------------------------------" \
			100 "-------------- EMULATORS AND PORTS ----------------" \
			88 "Rpi4 - Install DAPHNE EMULATOR AND CONFIG" \
			100 "-----------------------------------------------------------------" \
			2>&1 > /dev/tty)

        case "$choice" in
			100) separador_menu ;;
			67) RPI4_retrofe_instalador ;;
			69) GAMEMODE_instalador ;;
			70) RPI4_retroarch_instalador ;;
			78) silence ;;
			80) RPi-MONITOR_instalador ;;
			88) DAPHNE-EMULATOR_install ;;
			*)  break ;;
        esac
    done
}

function separador_menu() {                                          
dialog --infobox "... Separador para el menu, sin funcion ..." 30 55 ; sleep 2
}


function RPi-MONITOR_instalador() {                                          
dialog --infobox "... RPI4 Script RPi-MONITOR installer in its most recent version ...\n\n" 30 55 ; sleep 3
sudo apt-get update && sudo apt-get install -y dirmngr wget
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 2C0D3C0F
sudo wget http://goo.gl/vewCLL -O /etc/apt/sources.list.d/rpimonitor.list
sudo apt-get update && sudo apt-get install -y rpimonitor
sudo /etc/init.d/rpimonitor update
dialog --infobox "... Now that it is installed you can access it with the web browser by: http://raspberrypi.local:8888/ ..\n\n NOTE: Where http://raspberry. refers to the hostname your system has, it may be different." 30 55 ; sleep 8
}

function GAMEMODE_instalador() {                                          
dialog --infobox "... RPI4 Script instalador de GameMode en su version 1.6.0 ...\n\n" 30 55 ; sleep 3
sudo apt-get update && sudo apt-get install -y libsystemd-dev pkg-config libdbus-1-dev libinih-dev
cd && git clone https://github.com/FeralInteractive/gamemode.git
cd gamemode
#git checkout 1.6.1 # omit to build the master branch
./bootstrap.sh
cd && sudo rm -r gamemode/
dialog --infobox " Gamemode installed and with its configuration selected, if I have Retroarch installed it will activate in Auto mode" 30 55 ; sleep 8
}

function RPI4_retroarch_instalador() {                                          
dialog --infobox "... RIP4 64bits Script Retroarch installer in its latest version ..." 30 55 ; sleep 5
sudo apt-get update

# INSTALAR DEPENDENCIAS DESPUES DE ACTUALIZAR LISTA DE PAQUETES --->
sudo apt-get install -y build-essential libasound2-dev libudev-dev libxkbcommon-dev zlib1g-dev libfreetype6-dev libegl1-mesa-dev libgles2-mesa-dev libgbm-dev libavcodec-dev libsdl2-dev libsdl-image1.2-dev libxml2-dev yasm libavformat-dev libavdevice-dev libswresample-dev libavresample-dev libswscale-dev libv4l-dev libgl*-mesa-dev
sudo apt-get install -y xcb libxcb-xkb-dev x11-xkb-utils libx11-xcb-dev libxkbcommon-x11-dev
sudo apt-get install -y libusb-1.0-0-dev libraspberrypi-dev

# DESCARGAR RETROARCH EN SU ULTIMA VERSION --->
cd && git clone --recursive https://github.com/libretro/RetroArch
cd RetroArch/
# PARA 32BITS # CFLAGS="-mfpu=neon" ./configure --disable-videocore --enable-opengl --disable-opengl1 --enable-alsa --enable-udev --disable-opengles --enable-neon
# PARA 32BITS # CFLAGS="-mfpu=neon" ./configure --disable-opengl1 --enable-neon --enable-opengles3 --enable-opengles --enable-udev --disable-videocore --enable-kms --enable-egl
# PARA 64BITS #
# SIN ESCRITORIO # ./configure --enable-kms --enable-egl 
# OPTIONAL CONFIG # ./configure --disable-vulkan --disable-ffmpeg --enable-xmb --disable-materialui --disable-flac --disable-parport --disable-vulkan_display --disable-videocore --disable-videoprocessor --disable-v4l2 --enable-x11 --disable-wayland --disable-vg --disable-jack --enable-kms --disable-discord
# EXPORTAR VARIABLES PARA ESTA SESION ---> OPCION NUEVA WAYLAND, ACTIVAR SU FUNCION EN RASPI-CONFIG Y REINICIAR EL SISTEMA
export CFLAGS='-march=armv8-a+fp+simd+sb+predres+crypto+crc -mcpu=cortex-a72 -mtune=cortex-a72 -O3 -funsafe-math-optimizations'
export CXXFLAGS='-march=armv8-a+fp+simd+sb+predres+crypto+crc -mcpu=cortex-a72 -mtune=cortex-a72 -O3 -funsafe-math-optimizations'
./configure --disable-caca --disable-vg --disable-opengl1 --disable-dispmanx --enable-x11 --enable-wayland --disable-sdl --enable-sdl2 --enable-ffmpeg --enable-udev --enable-pulse --enable-freetype --enable-7zip --disable-videocore --enable-udev --enable-alsa --enable-opengles --enable-vulkan --enable-opengl
make -j4
sudo make install
cd && sudo rm -R RetroArch/

##### directorios base
dialog --infobox "... Downloading and Copying BASE BIOS for retroarch on /home/retro/.config/retroarch/system ..." 30 55 ; sleep 3
cd && mkdir /home/retro/.config/
cd && mkdir /home/retro/.config/retroarch/
cd && mkdir /home/retro/.config/retroarch/cores/
cd && cp -R Rpi_Retro64/cores_64/* /home/retro/.config/retroarch/cores/
cd && mkdir /home/retro/.config/retroarch/system/
# DOWNLOAD ASSETS AND AUTOCONFIG CONTROLS FOR RETROARCH
cd && wget http://buildbot.libretro.com/assets/frontend/assets.zip && unzip assets.zip -d /home/retro/.config/retroarch/assets && sudo rm /home/retro/assets.zip
cd && wget http://buildbot.libretro.com/assets/frontend/autoconfig.zip && unzip autoconfig.zip -d /home/retro/.config/retroarch/autoconfig && sudo rm /home/retro/autoconfig.zip
##### cargar bios y configuracion retroarch
cd && cp Rpi_Retro64/configs/rpi4/retroarch.cfg /home/retro/.config/retroarch/
cd && git clone https://github.com/DOCK-PI3/rpi-retroarch-bios.git
cd && cp -R rpi-retroarch-bios/system/* /home/retro/.config/retroarch/system/
sudo rm -R /home/retro/rpi-retroarch-bios/
sudo chown retro:retro /home/retro/.config/retroarch
dialog --infobox "... Download CONFIG, BASE BIOS AND ASSETS: OK ..." 30 55 ; sleep 3
dialog --infobox "... RetroArch 1.10.3 installed and configured correctly on your rpi4! ..." 30 55 ; sleep 7
}


#####################################################
# BULLSEYE LITE ARMHF arm64
function RPI4_retrofe_instalador() {                                          
dialog --infobox "... RPI4 Script RetroFE installer in its most recent version ..." 30 55 ; sleep 3
# if you have Qt5 install this plugin
# sudo apt-get install gstreamer1.0-qt5
# install if you want to work with audio
# Paquetes usados en kernel por default
# Instalar las dependencias GSTREAME.... "sfml-pi" y mvp,vlc ### git-core comment...
sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install -y libx264-dev libjpeg-dev neofetch
# install the remaining plugins
sudo apt-get install -y libgstreamer1.0-0 libgstreamer-gl1.0-0 libgstreamer-plugins-base1.0-0 gstreamer1.0-gl gstreamer1.0-pulseaudio gstreamer1.0-plugins-good 
sudo apt-get install -y git g++ cmake dos2unix zlib1g-dev libsdl2-2.0 libsdl2-mixer-2.0 libsdl2-image-2.0 libsdl2-ttf-2.0
sudo apt-get install -y libsdl2-dev libsdl2-mixer-dev libsdl2-image-dev libsdl2-ttf-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
sudo apt-get install -y gstreamer1.0-libav zlib1g-dev libglib2.0-0 libglib2.0-dev libavcodec-extra sqlite3
sudo apt-get install -y gstreamer1.0-omx-* gstreamer1.0-plugins-bad
# Dependencia para hacer el make y ejecutar retrofe en buster RPI4 - retrofe #
# ----> sudo Xorg :0 -configure uuu :0.0
sudo apt-get install -y xinit xterm xorg xorg-dev xorg-server-source menu openbox obconf thunar pulseaudio pulseaudio-utils
sudo apt-get install -y git g++ cmake golang dos2unix zlib1g-dev libsdl2* zlib1g-dev libglib2.0-0 libglib2.0-dev sqlite3
#Descargar y vlc y mpv
sudo apt-get install -y mpv #vlc
#Descargar e instalar sfml-pi
sudo apt-get install -y libsfml-dev
#Descargar e instalar ffmpeg
sudo apt-get -y install autoconf automake build-essential cmake git-core libass-dev libfreetype6-dev libgnutls28-dev libmp3lame-dev libsdl2-dev libtool libva-dev libvdpau-dev libvorbis-dev libxcb1-dev libxcb-shm0-dev libxcb-xfixes0-dev mesón ninja-build pkg-config texinfo wget yasm zlib1g-dev
sudo apt install -y libunistring-dev libaom-dev libdav1d-dev
sudo apt-get install -y nasm libx264-dev libx265-dev libnuma-dev libvpx-dev libfdk-aac-dev libopus-dev libdav1d-dev
cd && git clone https://git.ffmpeg.org/ffmpeg.git ffmpeg
cd ffmpeg/
./configure --enable-gpl --enable-nonfree --arch=aarch64 --enable-libaom --enable-libass --enable-libfdk-aac --enable-libfreetype --enable-libmp3lame --enable-libopus --enable-libvorbis --enable-libvpx --enable->
make -j4
sudo make install
cd
sudo rm -R ffmpeg/

sudo ldconfig
sudo apt-get install -y xfce4 lightdm lightdm-gtk-greeter-settings xserver-xephyr mousepad converseen
#sudo dpkg-reconfigure lightdm

# BUILD SDL2 
git clone https://github.com/libsdl-org/SDL
cd SDL
mkdir build
cd build
../configure
make -j4
sudo make install
cd && sudo rm -r Rpi_Retro64/SDL/

# VULKAN Instalar las dependencias ,sistema de compilaci?n MESON, el cargador Vulkan y los encabezados
sudo apt-get install -y --no-install-recommends flex bison python3-mako python3-setuptools valgrind wayland-protocols waylandpp-dev libwayland-* libzstd* libxshmfence1 libxshmfence-dev llvm llvm-dev libxcb-* libexpat1-dev libudev-dev gettext ca-certificates xz-utils zlib1g-dev pkg-config meson libvulkan-dev libvulkan1 glslang-dev spirv-tools

sudo apt-get install -y libxcb-randr0-dev libxrandr-dev libxcb-xinerama0-dev libxinerama-dev libxcursor-dev libxcb-cursor-dev libxkbcommon-dev xutils-dev xutils-dev libpthread-stubs0-dev libpciaccess-dev libffi-dev x11proto-xext-dev libxcb1-dev libxcb-*dev bison flex libssl-dev libgnutls28-dev x11proto-dri2-dev x11proto-dri3-dev libx11-dev libxcb-glx0-dev libx11-xcb-dev libxext-dev libxdamage-dev libxfixes-dev libva-dev x11proto-randr-dev x11proto-present-dev libclc-dev libelf-dev git build-essential mesa-utils libvulkan-dev ninja-build libvulkan1 python3-mako libdrm-dev libxshmfence-dev libxxf86vm-dev
# WAYLAND EXTRA UPDATE ULTIMATE PROTOCOLS RELEASE        importante !!!!!!!!!!!!!!!!!!!!!!!!
# aqui creamos dir build y entramos al dir para construir <------- <---- <--
cd && sudo rm -r Rpi_Retro64/depext_dmr/wayland-protocols-1.25/build
cd && mkdir Rpi_Retro64/depext_dmr/wayland-protocols-1.25/build && cd Rpi_Retro64/depext_dmr/wayland-protocols-1.25/build
meson --prefix=/usr --buildtype=release &&
ninja
sudo ninja install
cd && sudo rm -r Rpi_Retro64/depext_dmr/wayland-protocols-1.25/build/

# Instalar dependencia up version libDRM, configurar, construir e instalar
cd && sudo rm -r Rpi_Retro64/depext_dmr/libdrm-2.4.110/build
cd && mkdir Rpi_Retro64/depext_dmr/libdrm-2.4.110/build && cd Rpi_Retro64/depext_dmr/libdrm-2.4.110/build
CFLAGS="-O2 -march=armv8-a+crc+simd -mtune=cortex-a72" CXXFLAGS="-O2 -march=armv8-a+crc+simd -mtune=cortex-a72" meson -Dudev=true -Dvc4=true -Dintel=false -Dvmwgfx=false -Dradeon=false -Damdgpu=false -Dnouveau=false -Dfreedreno=false -Dinstall-test-programs=true ..
ninja -j4
sudo ninja install
cd && sudo rm -r Rpi_Retro64/depext_dmr/libdrm-2.4.110/build/

# Descargar drm mesa y MESA con soporte v3dv, x11, wayland, VULKAN, ect, ... configurar, constrir e instalar...
git clone https://gitlab.freedesktop.org/mesa/drm.git mesa1
cd mesa1
mkdir build && cd build
CFLAGS="-O2 -march=armv8-a+crc+simd -mtune=cortex-a72" CXXFLAGS="-O2 -march=armv8-a+crc+simd -mtune=cortex-a72" meson -Dudev=true -Dplatforms=x11 -Dvulkan-drivers=broadcom -Ddri-drivers= -Dgallium-drivers=v3d,vc4,kmsro -Dglx=disabled -Dinstall-test-programs=true -Dbuildtype=release --libdir lib ..
ninja -j4
sudo ninja install
cd && sudo rm -r mesa1/  #    < FALTA BORRAR ESTO >

# INSTALL MESA+VULKAN PI - NEW VERSION REPO TREE : wip/igalia/v3dv-conformance-1.2
cd && git clone https://gitlab.freedesktop.org/apinheiro/mesa.git mesa2
cd mesa2
git checkout wip/igalia/v3dv-conformance-1.1
mkdir build && cd build
CFLAGS="-O2 -march=armv8-a+crc+simd -mtune=cortex-a72" CXXFLAGS="-O2 -march=armv8-a+crc+simd -mtune=cortex-a72" meson -Dudev=true -Dplatforms=x11,wayland -Dvulkan-drivers=broadcom -Ddri-drivers= -Dgallium-drivers=v3d,vc4,kmsro -Dglx=disabled -Dinstall-test-programs=true -Dbuildtype=release --libdir lib ..
ninja -j4
sudo ninja install
cd && sudo rm -r mesa2/  #    < FALTA BORRAR ESTO >

# Añadido permanentemente en .profile ,variable en su ruta de instalacion
#exportar VK_ICD_FILENAMES=/home/retro/local-install/share/vulkan/icd.d/broadcom_icd.armv7l.json

# HERRAMIENTA PARA REPARAR ESPACIO DE COLOR INCORRECTO pngcrush
# USO : find /home/retro/MABE/collections/ -type f -iname '*.png' -exec pngcrush -ow -rem allb -reduce {} \;
sudo apt-get install -y pngcrush
# Descargar y compilar RETROFE
cd && mkdir /home/retro/MABE
cd && git clone https://github.com/phulshof/RetroFE.git
cd RetroFE/ && cmake RetroFE/Source -BRetroFE/Build -DVERSION_MAJOR=0 -DVERSION_MINOR=0 -DVERSION_BUILD=0
cmake --build RetroFE/Build
python Scripts/Package.py --os=linux --build=full
cd && cp -r /home/retro/RetroFE/Artifacts/linux/RetroFE/* /home/retro/MABE && cd && sudo rm -r /home/retro/RetroFE
cp /home/retro/Rpi_Retro64/configs/rpi4/retrofe_conf/.profile /home/retro/
cp /home/retro/Rpi_Retro64/configs/retrofeStart.sh /home/retro/MABE/
cp /home/retro/Rpi_Retro64/configs/CreateCollections.sh /home/retro/MABE/
########----> CREAR ACCESO DIRECTO A PNGCRUSH PARA CORREGIR ESPACIO DE COLOR EN EL DIRECTORIO /collections DE TODAS LAS IMAGENES PNG ..Listo
cp /home/retro/Rpi_Retro64/configs/PNGCRUSH-FIX-PNGs.sh /home/retro/MABE/
cp /home/retro/Rpi_Retro64/configs/rpi4/retrofe_conf/*.conf /home/retro/MABE/ 
# CREATE DIRECT ACCESS AND AUTO START
cd && sudo mkdir /usr/local/share/applications/
cd && sudo cp Rpi_Retro64/configs/RetroFE.png /usr/share/icons/
sudo touch /usr/local/share/applications/RetroFE\ Pi.desktop
sudo cat > /usr/local/share/applications/RetroFE\ Pi.desktop <<_EOF_
[Desktop Entry]
Version=1.0
Name=RetroFE Pi
Comment=RetroFE Pi collections RetroFE Frontend
Exec=/home/retro/MABE/retrofeStart.sh
Terminal=false
Type=Application
Categories=Game
Icon=/usr/share/icons/RetroFE.png
Name[es_ES]=RetroFE Pi
_EOF_

cd && sudo cp Rpi_Retro64/configs/CreateCollections.sh /home/retro/MABE/
cd && sudo cp Rpi_Retro64/configs/CCollectionsCreator.png /usr/share/icons/
sudo touch /usr/local/share/applications/Create\ Collections.desktop
sudo cat > /usr/local/share/applications/Create\ Collections.desktop <<_EOF_
[Desktop Entry]
Version=1.0
Name=Create Collections
Comment=Collections creator for RetroFE Frontend
Exec=/home/retro/MABE/CreateCollections.sh
Terminal=false
Type=Application
Categories=Game;Acssesories
Icon=/usr/share/icons/CCollectionsCreator.png
_EOF_

cd && mkdir .config/ && mkdir .config/autostart/
cd && cp -R Rpi_Retro64/configs/acdirectos/Desktop /home/retro/
sudo chmod +x /home/retro/Desktop/*
cd && sudo cp -R Rpi_Retro64/configs/acdirectos/usr/local/share/applications/* /usr/local/share/applications/
sudo chmod +x /usr/local/share/applications/*
sudo cp /home/retro/Desktop/RetroFE\ Pi.desktop /home/retro/.config/autostart/
cd && cp -R /home/retro/Rpi_Retro64/configs/xfce4/.config/* /home/retro/.config/
cd && cp -R /home/retro/Rpi_Retro64/configs/layouts/* /home/retro/MABE/layouts/
mkdir /home/retro/MABE/utils
cd && sudo cp Rpi_Retro64/configs/mymodtd/info_welcome.sh /usr/bin/
cd && sudo cp Rpi_Retro64/configs/mymodtd/logo_bash.md /home/retro/MABE/utils/
sudo chmod +x /usr/bin/info_welcome.sh

cd && sudo cp -R /home/retro/Rpi_Retro64/configs/xfce4/etc/xdg/ /etc/
cd && sudo chmod +x .config/autostart/*
sudo chown -R retro:retro /home/retro/.config/
cd && sudo chmod +x /home/retro/MABE/*.sh
cd /home/retro/MABE/ && sudo rm README.txt README-UBUNTU.txt
cd && sudo rm -R /etc/lightdm/
cd && sudo cp -R Rpi_Retro64/configs/etc/lightdm /etc/
cd && sudo cp -R Rpi_Retro64/configs/collections/Opciones /home/retro/MABE/collections/
touch /home/retro/MABE/launchers/opciones.conf
sudo cat > /home/retro/MABE/launchers/opciones.conf <<_EOF_
# OPCIONES - Generate config by MABEDEEP 
executable = /usr/bin/bash
arguments = "%ITEM_FILEPATH%"
_EOF_

cd && sudo chmod +x /home/retro/MABE/collections/Opciones/roms/*.sh
echo "Opciones" >> /home/retro/MABE/collections/Main/menu.txt
sudo rm -R /home/retro/MABE/meta
cd && sudo cp -R Rpi_Retro64/configs/meta /home/retro/MABE/
dialog --infobox " RetroFE was compiled successfully, run it without root permissions. ROUTE: /home/retro/MABE/ " 350 350 ; sleep 10


## NOTA IMPORTANTE : PARA QUE SE ESCUCHE EL SONIDO HAY QUE EDITAR sudo nano /usr/share/alsa/alsa.conf ,BUSCAR defaul.ctl.card y default.pcm.card 0>1
dialog --infobox " ...RetroFe installed and with automated startup! Finish configuring your system! REBOOT in 5s ... " 350 350 ; sleep 5
dialog --infobox " ...Now the raspi-config tool opens, enter the AUDIO option and select your preferred sound output,\n\n ...if you can't select it, don't worry, you can do it later from the desktop... " 350 350 ; sleep 10
dialog --infobox " ...ANOTHER IMPORTANT THING CONFIGURE AUTO LOGIN ON DESKTOP,\n\n ...REMEMBER THAT RETROFE HAS TO START AUTOMATICALLY AT THE NEXT DESKTOP SESSION!... " 350 350 ; sleep 8
sudo raspi-config
}


function silence() {
	# ADDED BY Moriggy
	file="/boot/cmdline.txt"
	cp $file /home/retro/.config/

	file1="/boot/config.txt"
	cp $file1 /home/retro/.config/

	if [[ -f "$file.bkp" ]]; then
		dialog --infobox "The file already exists, could not activate silent boot." 3 75 ; sleep 2
		break
	else
		sudo cp $file $file.bkp
		sudo cp $file1 $file1.bkp
		file2="/home/retro/.config/cmdline.txt"
		file3="/home/retro/.config/config.txt"
		dato="$(cat /boot/cmdline.txt | grep 'PARTUUID' | cut -d  " "  -f3)"
		echo "Wait a moment please..." ; sleep 1

		cat > $file2 <<_EOF_
console=serial0,115200 console=tty3 loglevel=3 $dato rootfstype=ext4 fsck.repair=yes rootwait quiet plymouth.enable=0 logo.nologo
_EOF_
		sudo chmod -R +x $file2
		sudo chown -R root:root $file2
		sudo mv $file2 $file
		sed -i '$a disable_splash=1' $file3
		sed -i '$a boot_delay=0' $file3
		sudo chmod -R +x $file3
		sudo chown -R root:root $file3
		sudo mv $file3 $file1
		dialog --infobox "Silence boot has been activated.\nThe system will reboot in 2 seconds to make the change effective." 5 75 ; sleep 2
		sudo reboot
	fi
}


function DAPHNE-EMULATOR_install() {                                          
dialog --infobox "... RPI4 Script install Daphne emulator ...\n\n" 30 55 ; sleep 3

md_inst="/home/retro/MABE/emulators/daphne"

# DEPENDENCIAS
sudo apt install -y libsdl1.2-dev libvorbis-dev libglew-dev zlib1g-dev
# COPY EMULATOR PRECOPILE
mkdir /home/retro/MABE/emulators/ && cp -r /home/retro/Rpi_Retro64/emulators-dev/daphne/ /home/retro/MABE/emulators/
# PERMISOS   
chmod +x "$md_inst/daphne.sh"
chmod +x "$md_inst/daphne.bin"
# CREATE COLLECTION DAPHNE
cd /home/retro/MABE/ && ./retrofe -createcollection "Daphne" && touch /home/retro/MABE/launchers/daphne.conf
sudo cat > /home/retro/MABE/launchers/daphne.conf <<_EOF_
# Daphne - Generate config by CoinOPS Team 
executable = /home/retro/MABE/emulators/daphne/daphne.sh
arguments = "%ITEM_FILENAME%"
_EOF_
# CUSTOM OPTIONS collection settings.conf
sudo rm /home/retro/MABE/collections/Daphne/settings.conf
touch /home/retro/MABE/collections/Daphne/settings.conf
sudo cat > /home/retro/MABE/collections/Daphne/settings.conf <<_EOF_
# Daphne - Generate settings by CoinOPS Team 
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
mv /home/retro/MABE/emulators/daphne/roms/ /home/retro/MABE/collections/Daphne/
ln -s /home/retro/MABE/collections/Daphne/roms/ /home/retro/MABE/emulators/daphne/

sudo chown -R retro:retro "$md_inst"

echo install daphne emu complete and create daphne collection! 
sleep 3
dialog --infobox " Emulator Daphne installed in dir: /home/retro/MABE/emulators" 30 55 ; sleep 8
}

main_menu
