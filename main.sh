add-apt-repository ppa:jonathonf/vim
apt upgrade --yes
apt install vim
cd ~/
git clone http://github.com/mirachan010/.vim.git .vim
cd ~/.vim/configs/users
cp .vimrc ~/.vimrc
