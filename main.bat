Set-ExecutionPolicy RemoteSigned
 iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco upgrade chocolatey --yes
choco install package.config --yes
cd ~/
git clone https://github.com/mirachan010/.vim.git .vim
cd .vim/configs/users
cp .vimrc ~/.vimrc
