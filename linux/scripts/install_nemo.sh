#!/bin/bash
sudo apt-get install --yes nemo
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true
print "\n\n\nFor nemo-desktop go to 'Startup Applications' and add an entry with command 'nemo-desktop'"
