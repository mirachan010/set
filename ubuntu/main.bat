@powershell -NoProfile -ExecutionPolicy unrestricted -Command "Start-Process powershell.exe -Verb runas"

Set-ExecutionPolicy RemoteSigned
 iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco upgrade chocolatey --yes
choco install package.config --yes
cd ~/
git clone https://github.com/mirachan010/dotfiles.git
cd dotfiles
git clone https://github.com/mirachan010/.vim.git .vim
sh dots.sh
