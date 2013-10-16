# Surcharge ou ajout de variable d'environnement

# MySQL
#PATH="/usr/local/mysql/bin:$PATH"

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