#!/usr/local/bin/ruby
require 'rubygems'
require 'highline/import'
 
# This has to be run from master
system "git checkout master"
 
# Update our list of remotes
system "git fetch"
system "git remote prune origin"
 
# Remove local fully merged branches
system "git branch --merged master | grep -v 'master$' | grep -v 'develop$' | xargs git branch -d"
 
# Show remote fully merged branches
say "<%= color('The following remote branches are fully merged and will be removed:', BOLD) %>"
cmd = "git branch -r --merged master | sed 's/ *origin\\///' | grep -v 'master$' | grep -v 'develop$'"
system cmd
 
puts ""
answer = ask("Continue (y/n)?") {|q| q.validate = /^[yn]$/}
if (answer == 'y')
    # Remove remote fully merged branches
    cmd+= " | xargs -I% git push origin :%"
    system cmd
    say "Obsolete branches have been removed."
end