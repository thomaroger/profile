# Functions DEV

# GIT & SVN
d () { if [[ -d ".svn" ]]; then svn diff "$@"; else git diff --color-words "$@"; fi; }
s () { if [[ -d ".svn" ]]; then svn status --ignore-externals "$@"; else git status "$@"; fi; }

function parse_branch () {
  if [[ -d ".svn" ]]; then
    url=`svn info | awk '/URL:/ {print $2}'`
    if [[ $url =~ trunk ]]; then
      echo  " (trunk)"
    elif [[ $url =~ /branches/ ]]; then
      echo  $url | sed -e 's#^.*/\(branches/.*\)/.*$#\1#' | sed -e 's#^.*/\ (branches/.*\)$#\1#'
    elif [[ $url =~ /tags/ ]]; then
      echo $url | sed -e 's#^.*/\(tags/.*\)/.*$#\1#' | sed -e 's#^.*/\ (tags/.*\)$#\1#'
    fi   
  fi;
  if [[ -d ".git" ]]; then
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  fi;
}


function git_remove_old_branches (){
  git co develop
  git fetch
  git branch -r --merged | grep -vw "master" | grep -vw "HEAD" | grep -vw "develop" | cut -d "/" -f2 | xargs -p -I {} git push origin :{}
}