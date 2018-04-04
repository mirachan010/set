sudo add-apt-repository ppa:jonathonf/vim
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -:
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt update
sudo apt upgrade --yes
sudo apt install wine --yes
sudo apt install google-chrome-stable --yes
sudo apt install vim --yes
git clone http://github.com/mirachan010/dotfiles.git dotfiles
cd ~/dotfiles
git clone http://github.com/mirachan010/.vim.git .vim
sh dots.sh
vim
