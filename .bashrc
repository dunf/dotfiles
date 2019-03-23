#
# ~/.bashrc
# Increase history file size
HISTFILESIZE=10000
HISTSIZE=10000
# If not running interactively, don't do anything


[[ $- != *i* ]] && return

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#PS1='[\u@\h \W]\$ '
#PS1='[\u@\h \W]\$ '
PS1="[\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\]]$ "
#PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi
