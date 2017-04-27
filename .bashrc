#
# ~/.bashrc
# alias.sh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
shopt -s expand_aliases

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias cd=cdls
alias c='clear'
alias up=up

alias rm='rm -i'
alias mv='mv -i'

alias xau='shutdown now'
alias rr='shutdown -r 0'

function cdls {
	builtin cd "$@" && ls
}

function up {
	/home/mazza/Documentos/update.sh
}
export PS1="\[\033[38;5;160m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;15m\]:[\[$(tput sgr0)\]\[\033[38;5;160m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]]: \[$(tput sgr0)\]"
