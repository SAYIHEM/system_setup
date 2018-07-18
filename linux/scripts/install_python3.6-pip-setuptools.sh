#!/bin/bash
sudo apt update
sudo apt install --yes python3.6 python3.6-dev python3.6-venv
wget https://bootstrap.pypa.io/get-pip.py
sudo python3.6 get-pip.py
sudo ln -s /usr/bin/python3.6 /usr/local/bin/python3
sudo ln -s /usr/local/bin/pip /usr/local/bin/pip3
sudo rm get-pip.py
