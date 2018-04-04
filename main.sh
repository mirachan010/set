sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt upgrade --yes
sudo apt install wine --yes
sudo apt install vim --yes
git clone http://github.com/mirachan010/dotfiles.git dotfiles
cd ~/dotfiles
git clone http://github.com/mirachan010/.vim.git .vim
sh ubuntu.sh
vim
