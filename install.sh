#!/bin/bash

# Allow apps from unidentified developers
sudo spctl --master-disable


which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	brew update
fi

brew tap Homebrew/bundle

# Homebrew Stufffff
brew bundle

# Create subl command
which -s subl
if [[ $? != 0 ]] ; then
    # Create subl soft link
    ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime
else
	echo "subl soft link already created"
fi

if [ ! -e /Applications/SkyFonts/SkyFonts.app ]; then
 open /usr/local/Caskroom/skyfonts/**/Install\ SkyFonts.app
fi

git config --global core.editor "sublime -n -w"

# Move Sublime settings
# Install package control to see them take effect
cp  ./sublime-settings/* ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

# unset PYTHONPATH

xcode-select --install

cp .bash_profile ~/.bash_profile
source ~/.bash_profile





