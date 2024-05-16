#!/bin/bash

#creating home dirs

mkdir $HOME/desktop
mkdir $HOME/downloads
mkdir $HOME/modelos
mkdir $HOME/publico
mkdir $HOME/docs
mkdir $HOME/musicas
mkdir $HOME/imagens
mkdir $HOME/videos
mkdir $HOME/.local
mkdir $HOME/projetos

echo -e "\nCreating home dirs\n"

#copying scrips and wallpapers to .local

cp -r ./dir/scripts $HOME/.local/
cp -r ./dir/wallpapers $HOME/.local/

#copying confg files

cp ./config/bashrc $HOME/.bashrc
cp ./config/vimrc $HOME/.vimrc
cp ./config/i3blocks.conf $HOME/.i3blocks.conf 

if [ -d $HOME/.config ];then
	cp -r ./dir/i3 $HOME/.config/
else
	mkdir -p $HOME/.config
	cp -r ./dir/i3 $HOME/.config/
else
fi

cp ./config/user-dirs.dirs $HOME/.config/user-dirs.dirs
xdg-user-dirs-update

echo -e "\nCopied files\n"
echo -e "configuration completed\n"
