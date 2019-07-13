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

# Move Sublime settings
cp  ./sublime-settings/ ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/



cp .bash_profile ~/.bash_profile
source ~/.bash_profile





