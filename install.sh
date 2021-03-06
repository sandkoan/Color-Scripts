#!/usr/bin/env bash

# Simple installation script

cd $HOME
rm -rf shell-color-scripts
git clone https://github.com/sandkoan/shell-color-scripts.git
cd shell-color-scripts

rm -rf ~/bin/shell-color-scripts || return 1
echo
echo 'Removing any existing installation of shell-color-scripts...'

echo "Mking $HOME/bin/shell-color-scripts directory..."
mkdir -p ~/bin/shell-color-scripts

cp -rf colorscripts ~/bin/shell-color-scripts/
cp colorscript ~/bin/shell-color-scripts/colorscript
echo Copying colorscripts to "HOME/bin ..."

cd $HOME
# rm -rf shell-color-scripts

echo "Installation complete."
echo
echo Adding $HOME/bin/shell-color-scripts and $HOME/bin/shell-color-scripts/colorscripts to .zshrc and .bashrc
echo 'PATH=$PATH:~/bin/shell-color-scripts:~/bin/shell-color-scripts/colorscripts' >> ~/.zshrc
echo 'PATH=$PATH:~/bin/shell-color-scripts:~/bin/shell-color-scripts/colorscripts' >> ~/.bashrc

echo 
echo "To run a random color script each time you open a terminal, add the following to your shell configuration file:"
printf " ### RANDOM COLOR SCRIPT ### \ncolorscript random "
printf "\n"
printf "To get help, run: \ncolorscript --help"
