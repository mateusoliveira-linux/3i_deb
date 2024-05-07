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

cp ./dir/scripts $HOME/.local/
cp ./dir/wallpapers $HOME/.local/

#copying confg files

cp ./config/bashrc $HOME/.bashrc
cp ./config/vimrc $HOME/.vimrc

if [ -d $HOME/.config/i3 ];then
	cp ./config/config $home/.config/i3/config
else
	mkdir -p $HOME/.config/i3
	cp ./config/config $home/.config/i3/config
fi

cp ./config/user-dirs.dirs $home/.config/user-dirs.dirs
xdg-user-dirs-update

echo -e "\nCopied files\n"
echo -e "configuration completed\n"
