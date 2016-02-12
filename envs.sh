# Surcharge ou ajout de variable d'environnement

# MySQL
PATH="$HOME/.composer/vendor/bin/:/Applications/MAMP/bin/php/php5.6.10/bin/:/Applications/MAMP/Library/bin:/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"

#MAVEN 
MAVEN_HOME="/Users/rogerthomas/Documents/Outils/maven"
PATH="$PATH:$MAVEN_HOME/bin"

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
export DRUSH_PHP="/Applications/MAMP/bin/php/php5.6.10/bin/php"

#NPM
NPM_PACKAGES="${HOME}/.npm-packages"

PATH="$NPM_PACKAGES/bin:$PATH"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# PS1
function color_my_prompt {
    local __user_and_host="\[\033[0;34m\]\u@\[\033[0;37m\]\h\[\033[0;34m\]:"
    local __cur_location="\[\033[0;33m\]\w"
    local __git_branch_color="\[\033[0;36m\]"
    local __git_branch="\`ruby -e \"print (%x{git branch 2> /dev/null}.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`"
    local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    local __prompt_tail="\[\033[0;35m\]"
    local __last_color="\[\033[00m\]"
    export PS1="$__user_and_host$__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color"
}
color_my_prompt
