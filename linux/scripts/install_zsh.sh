#!/bin/bash
sudo apt install zsh --yes
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo '\n\nPlease reboot to see changes!'
