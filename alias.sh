# Alias commande  UNIX




umask 077

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias -- -='cd -'

alias c='clear'
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

alias ls='ls -G'
alias l='ls -lhG'
alias ll='ls -halG'
alias lsd='ls -lFG | grep "^d"'

alias kk='ll'
alias mm='ll'

alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'
alias week='date +%V'

# Alias commande DEV

alias e='open -a /Volumes/Macintosh\ HD/Applications/Sublime\ Text\ 2.app'
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm update npm -g; npm update -g; sudo gem update'
alias wr='cd /Users/troger/webroot && ll'


# APACHE 
alias apache_stop='sudo apachectl stop'
alias apache_start='sudo apachectl start'
alias apache_status='sudo apachectl status'

alias access='tail -f /private/var/log/apache2/access_log'
alias error='tail -f /private/var/log/apache2/error_log'

alias vh='cd /etc/apache2/sites/'

# trafic HTTP
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# GIT
alias a='git add'
alias gi='git ci'
alias gg='git grep -n'
alias ggi='git grep -ni'
alias glb='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
alias go='git co'
alias gsmu='git submodule sync && git submodule update --init --recursive'
alias gt='git'
alias gti='git'


# MySQL 
alias mysql_start='/usr/local/mysql/support-files/mysql.server start'
alias mysql_stop='/usr/local/mysql/support-files/mysql.server stop'
alias mysql_restart='/usr/local/mysql/support-files/mysql.server restart'
alias mysql='sudo /usr/local/mysql/bin/mysql'

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