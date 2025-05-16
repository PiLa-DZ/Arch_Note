#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

#--> From Auto_Setup
export EDITOR="nvim"

#--> New
alias a="nvim ~/.bashrc"
alias b="source ~/.bashrc"
export PS1="\W \$"
alias c='xinput set-prop "$(xinput list --name-only | grep -i touch)" "libinput Accel Speed" '


e='\033[0m'       # Text Reset
c7='\033[0;96m'     # Cyan

d2='\033[1;91m'     # Red
d3='\033[1;92m'     # Green
#echo -e "${c7}================================================${e}"
#PS1="${d3} $(pwd)--> ${e}"


# Yazi Config on .bashrc
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
