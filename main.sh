add-apt-repository ppa:jonathonf/vim
apt upgrade --yes
apt install vim
exit
cd ~/
git clone http://github.com/mirachan010/.vim.git .vim
cd ~/.vim
sh ubuntu.sh
