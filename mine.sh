#!/bin/sh

#最初にホームディレクトリに移動しておく
cd ~/

#vim8.0用レポジトリ追加
add-apt-repository ppa:jonathonf/vim

#レポジトリ更新
apt-get update
apt update
apt upgrade --yes
apt install default-jdk --yes
apt install vim --yes
sudo apt install screen --yes

#dotfilesの設定とか
git clone http://github.com/mirachan010/dotfiles.git dotfiles
cd ~/dotfiles
#.vimを落としたりなんたり
git clone http://github.com/mirachan010/.vim.git .vim
sh dots.sh

#minecraft落とす
cd ~/
mkdir minecraft
cd minecraft
wget -O minecraft_server.jar https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.8.1.jar
java -Xmx1024M -Xms1024M -jar minecraft_server.jar nogui
vim eula.txt
