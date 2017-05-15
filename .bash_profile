#     /\          /\          //\          /\          /\
#  /\//\\/\    /\//\\/\    /\///\\/\    /\//\\/\    /\//\\
# //\\\///\\/\//\\\///\\/\//\\\\///\\/\//\\\///\\/\//\\\//
# \\//\/\\///\\\//\/\\///\\\//\//\\///\\\//\/\\///\\\//\/
# \\//\/\\///\\\//\/\\///\\\//\/\/\\///\\\//\/\\///\\\//\
# <<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>>

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h \[\033[33;1m\]\w\[\033[m\]\[\033[1;35m\]\$(parse_git_branch)\[\033[m\] $ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export TERM=xterm-256color

export BLOCKSIZE=1k
export EDITOR=/usr/bin/nano

alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"
alias qfind="find / -name "
alias ll='ls -FGlAhp'            

# <<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>>

alias apacheEdit='sudo edit /etc/httpd/httpd.conf'      # apacheEdit:       Edit httpd.conf
alias apacheRestart='sudo apachectl graceful'           # apacheRestart:    Restart Apache
alias editHosts='sudo edit /etc/hosts'                  # editHosts:        Edit /etc/hosts file
alias herr='tail /var/log/httpd/error_log'              # herr:             Tails HTTP error logs
alias apacheLogs="less +F /var/log/apache2/error_log"   # Apachelogs:   Shows apache error logs
httpHeaders () { /usr/bin/curl -I -L $@ ; }             # httpHeaders:      Grabs headers from web page
httpDebug () { /usr/bin/curl $@ -o /dev/null -w "dns: %{time_namelookup} connect: %{time_connect} pretransfer: %{time_pretransfer} starttransfer: %{time_starttransfer} total: %{time_total}\n" ; }

# <<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>>
defaults write com.apple.screencapture location ~/Documents/screenshots

#Fiinder: show all hidden files
defaults write com.apple.finder AppleShowAllFiles YES

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# <<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>>

export PYTHONPATH=/Users/ericsmith/Downloads/repos/caffe/python:/usr/local/lib/python2.7/site-packages:$PYTHONPATH
export DYLD_FALLBACK_LIBRARY_PATH=/usr/local/cuda/lib:/usr/local/lib/python2.7:$DYLD_FALLBACK_LIBRARY_PATH
PATH=$PATH:./node-modules/.bin

# ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime

PROMPT_COMMAND='echo -ne "\033]0;––\007"'


export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

export PATH="./node_modules/.bin:$PATH" # Add project-specific node modules

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

git config --global core.editor "subl -n -w"
