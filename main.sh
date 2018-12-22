#!/bin/sh

#最初にホームディレクトリに移動しておく
cd ~/

#gimp用レポジトリ追加
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt-add-repository ppa:neovim-ppa/stable  

#レポジトリ更新
sudo apt update
sudo apt upgrade --yes
sudo apt install -y default-jdk terminator tmux git zsh curl gimp chrome-gnome-shell gnome-tweak-tool make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev neovim

#Qiitaに上げていた分
chsh -s /usr/bin/zsh
git clone git://github.com/yyuu/pyenv.git ~/.pyenv
curl -sL --protoredir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

cd /usr/share/fonts/truetype
sudo git clone https://github.com/mzyy94/RictyDiminished-for-Powerline.git powerline
fc-cache -vf


#dotfilesの設定とか
git clone http://github.com/mirachan010/dotfiles.git dotfiles
cd ~/dotfiles
sh dots.sh
