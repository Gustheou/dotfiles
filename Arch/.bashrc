#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

alias ll='ls -l'
alias y='yazi'
alias wifi-list='nmcli device wifi list'
alias wifi-connect='nmcli device wifi connect'
export EDITOR=nvim
export JAVA_HOME=/usr/lib/jvm/jdk1.8.0
#export JAVA_HOME=$HOME/.jdks/corretto-11.0.28
export PATH="$JAVA_HOME/bin:$PATH"
