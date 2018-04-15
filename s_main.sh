#!/bin/sh

#最初にホームディレクトリに移動しておく
cd ~/

#vim8.0用レポジトリ追加
add-apt-repository ppa:jonathonf/vim

#レポジトリ更新
apt-get update
apt update
apt upgrade --yes
apt install vim --yes
apt install apache2 --yes

#dotfilesの設定とか
git clone http://github.com/mirachan010/dotfiles.git dotfiles
cd ~/dotfiles
#.vimを落としたりなんたり
git clone http://github.com/mirachan010/.vim.git .vim
sh dots.sh
cd /var/www/
rm -rf html
git clone https://github.com/mirachan010/html.git
cd html
vim
