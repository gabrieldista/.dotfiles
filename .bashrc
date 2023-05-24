#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

function cd {
  builtin cd "$@" && ls
}

source ~/.git-prompt.sh

alias ls='ls -l --color=auto'
alias grep='grep --color=auto'
alias sps='sudo pacman -S --color=auto'
alias spu='sudo pacman -Syu --color=auto'
alias cat='bat'
alias bat='cat'
alias shutdown='sudo shutdown -h now'

PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
