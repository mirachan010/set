#!/bin/sh

#最初にホームディレクトリに移動しておく
cd ~/

#vim8.0用レポジトリ追加
sudo add-apt-repository ppa:jonathonf/vim

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
sudo apt install vim --yes

#dotfilesの設定とか
git clone http://github.com/mirachan010/dotfiles.git dotfiles
cd ~/dotfiles
#.vimを落としたりなんたり
git clone http://github.com/mirachan010/.vim.git .vim
sh dots.sh
vim
