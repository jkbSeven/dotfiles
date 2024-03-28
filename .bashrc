#
# ~/.bashrc
#
#PS1='[\u@\h \W]\$ '

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias vpncon='sudo wg-quick up wg0'
alias vpndc='sudo wg-quick down wg0'

GIT_PS1_SHOWDIRTYSTATE=10
source ~/.git-status.sh
# PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'; PS1='\u [\W]${PS1_CMD1}$ '
PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'; PS1='[\W]${PS1_CMD1}$ '
