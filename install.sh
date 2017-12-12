#!/bin/bash

which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	brew update
fi

brew tap Homebrew/bundle

# Homebrew Stufffff
sh ~/.brew
brew bundle

which -s subl
if [[ $? != 0 ]] ; then
    # Create subl soft link
    ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime
else
	echo "subl soft link already created"
fi

cp .bash_profile ~/.bash_profile
source ~/.bash_profile


