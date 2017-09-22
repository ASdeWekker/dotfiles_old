#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# all the ls aliases
alias l='ls'
alias ll='ls -al'

# start file watchers and stuff
alias startn='clear && npm start'
alias starts='clear && compass watch'
alias startp='clear && pug -wP index.pug index.html'
# reload bash
alias reload-bash='source ~/.bashrc'
# ssh into server
alias sshserv='ssh -C pizza@oven'
# alias for sudo systemctl
alias syss='sudo systemctl'

# arch .bashrc source file
source /home/alex/.archbashrc