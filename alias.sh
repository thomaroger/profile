# Alias commande  UNIX

umask 077

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias -- -='cd -'

alias c='clear'
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

alias ls='ls -G --color'
alias l='ls -lhG --color'
alias ll='ls -halG --color'
alias lsd='ls -lFG --color | grep "^d"'

alias kk='ll'
alias mm='ll'

alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'
alias week='date +%V'

# Alias commande DEV

alias e='open -a C:\Program Files\Sublime Text 2\sublime_text.exe'
#alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm update npm -g; npm update -g; sudo gem update'
alias wr='cd ~/webroot/ && ll'


# APACHE 
alias apache_stop='sudo service apache2  stop'
alias apache_start='sudo service apache2 start'
alias apache_restart='sudo service apache2 start'
alias apache_status='sudo service apache2  status'

alias access='tail -f /var/log/apache2/access.log'
alias error='tail -f /var/log/apache2/error.log'

alias vh='cd /etc/apache2/sites-available/'

# trafic HTTP
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# GIT
alias a='git add'
alias gi='git ci'
alias gg='git grep -n'
alias ggi='git grep -ni'
alias glb="git log --all --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias go='git co'
alias gsmu='git submodule sync && git submodule update --init --recursive'
alias gt='git'
alias gti='git'


# MySQL 

# Recherche
alias ack='ack --smart-case --type-set twig=".twig"'
alias ackk='ack -f | ack'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'


# SFY 
alias ccc='sudo rm -rf */cache/*'
alias phpunit='phpunit --colors'

# SVN
alias svnu='svn update --ignore-externals'
alias svnupall='svn update * --ignore-externals'
alias svns='svn status --ignore-externals'
