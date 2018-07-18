#!/bin/bash
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
sudo apt install fontconfig --yes
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/local/share/fonts
fc-cache -vf /usr/local/share/fonts
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/

