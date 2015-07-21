#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Dark backgrounds
export PS1="\[\e[00;31m\]\u\[\e[0m\]\[\e[00;34m\]@\[\e[0m\]\[\e[00;31m\]\h\[\e[0m\]\[\e[00;37m\]: \w \\$\[\e[0m\] "

# Light background
#export PS1="\[\e[00;30m\]\u@\[\e[0m\]\[\e[00;31m\]\h\[\e[0m\]\[\e[00;30m\]:[\[\e[0m\]\[\e[00;34m\]\w\[\e[0m\]\[\e[00;30m\]]:\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"

# Git branch
PS1+="\$(if git rev-parse --git-dir >/dev/null 2>&1; then echo \" [br:\[\e[0;36m\]\$(git rev-parse --abbrev-ref HEAD)\$(git diff HEAD --quiet || echo '\[\e[0;31m\]*')\[\e[0m\]]\"; fi )"

PS1+="\n $  "

alias ls='ls --color=auto'

###
#Git
###

alias gs='git status'
alias gdc='git diff --cached'


###
#SevOne Stuff
###

alias sim='ssh xstats-sim@192.168.136.174'
alias src='cd /SevOneNMS/src/SevOneNMS/'
alias bdi='SevOne-build internal only'
alias Sac='SevOne-act check'
