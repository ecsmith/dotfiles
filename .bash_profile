#     /\          /\          //\          /\          /\
#  /\//\\/\    /\//\\/\    /\///\\/\    /\//\\/\    /\//\\
# //\\\///\\/\//\\\///\\/\//\\\\///\\/\//\\\///\\/\//\\\//
# \\//\/\\///\\\//\/\\///\\\//\//\\///\\\//\/\\///\\\//\/
# \\//\/\\///\\\//\/\\///\\\//\/\/\\///\\\//\/\\///\\\//\
# <<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>>

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
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
