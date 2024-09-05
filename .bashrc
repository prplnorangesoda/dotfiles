#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# 
# Line 1: user
# Line 2: pwd
# Line 3: cmdinput
# Line 1: 
# set bold, bg pink fg white
# set fg green, invert for ending char and ending whitespace
# Line 2:
# set bold, bg green, fg black
PS1='
\[\033[48;5;205;38;5;15;1m\]\u\[\033[7;38;5;10m\] \
\[\033[0m\]\[\033[48;5;10;38;5;0;1m\]\w\[\033[7;38;5;0m\] \
\[\033[0m\]\n\[\033[1;38;5;10m\]\$ \[\033[0m\]'

if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
	exec startx
fi
export COLORTERM=truecolor
