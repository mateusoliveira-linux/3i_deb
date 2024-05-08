#!/bin/bash

if [ $# -eq 0 ]; then
	echo "type --help to get help"
	exit 0
else
	for arg in $@; do
		if [ $arg == "--help" ]; then
			echo "run with sudo or as root!"
			echo "installer.sh [options]: enter one or more options"
			echo "--system -> system utilities"
			echo "--dev    -> development tools"
			echo "--midea  -> multimedia applications"
			echo "--web    -> browser and utilities"
			echo "--creat  -> creativity tools"
			echo "--help   -> help"
			exit 0 
		fi
	done
fi

apt update

for arg in $@; do
	case $arg in
		"--system")
			apt install -y xfce4-terminal \
				neofetch \
				rsync \
				nitrogen \
				curl \
				htop \
				pcmanfm \
				pulseaudio \
				lm-sensors \
				lightdm
			;;
		"--dev")
			apt install -y git \
				vim \
				build-essential \
				simulide
			;;
		"--midea")
			apt install -y mirage \
				antril \
				vlc
			;;
		"--web")
			apt install -y firefox-esr \
				transmission
			;;
		"--creat")
			apt install -y musescore \
				gimp \
				inkscape
			;;
		*)
			echo "$arg invalid option"
			;;

	esac
done
