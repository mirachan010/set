---
title: linux入れてやったこと
tags: Linux
author: mira010
slide: false
---
## 初期設定
```bash
sudo apt update
sudo apt upgrade
```
chromeインストール

## zshを導入

```bash
sudo apt install terminator git zsh curl
chsh -s /usr/bin/zsh
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev
git clone git://github.com/yyuu/pyenv.git ~/.pyenv

vi ~/.zshrc
```

```zshrc:~/.zschrc
export LANGUAGE=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8
export LANG=ja_JP.UTF-8
LANGUAGE=ja_JP.UTF-8
source $HOME/.zplug/init.zsh

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

function powerline_precmd() {
    PS1="$(~/.local/bin/powerline-shell --shell zsh $?)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi
~                   
```
```bash
pyenv install 3.7.0
pyenv global 3.7.0
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:neovim-ppa/stable  
sudo apt install neovim
pip install neovim
pyenv which python #ここで出てきたのはメモ
cd .config
mkdir nvim
cd nvim
vi init.vim
```

```vimscript:init.vim
let g:python3_host_prog = 'メモしたもの'
```

```bash
pip install --user powerline-shell
cd /usr/share/fonts/
sudo git clone https://github.com/mzyy94/RictyDiminished-for-Powerline.git powerline
```
フォント変更
端末の再起動


 
