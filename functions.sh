# Functions DEV

# GIT & SVN
d () { if [[ -d ".svn" ]]; then svn diff "$@" | colordiff | less -R; else git diff --color-words "$@"; fi; }
s () { if [[ -d ".svn" ]]; then svn status --ignore-externals "$@"; else git status "$@"; fi; }

function git_remove_old_branches (){
  git co develop
  git fetch
  git branch -r --merged | grep -vw "master" | grep -vw "HEAD" | grep -vw "develop" | cut -d "/" -f2 | xargs -p -I {} git push origin :{}
}