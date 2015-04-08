#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PS1="\[\e[00;30m\]\u@\[\e[0m\]\[\e[00;31m\]\h\[\e[0m\]\[\e[00;30m\]:[\[\e[0m\]\[\e[00;34m\]\w\[\e[0m\]\[\e[00;30m\]]:\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"
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
