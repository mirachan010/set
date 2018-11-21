#!/bin/sh

#最初にホームディレクトリに移動しておく
cd ~/

#gimp用レポジトリ追加
sudo add-apt-repository ppa:otto-kesselgulasch/gimp


#レポジトリ更新
sudo apt-get update
sudo apt update
sudo apt upgrade --yes
sudo apt install default-jdk --yes
sudo apt install easystroke --yes
sudo apt install wine --yes
sudo apt install gimp --yes
sudo apt install chrome-gnome-shell
sudo apt install gnome-tweak-tool
#dotfilesの設定とか
git clone http://github.com/mirachan010/dotfiles.git dotfiles
cd ~/dotfiles
sh dots.sh
chmod +x ~/dotfiles/main.sh
