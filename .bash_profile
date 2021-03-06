# Include .bashrc if present
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# Enable programmable completion features
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# Enable fancy ls coloring
if [ -x /usr/bin/dircolors ]; then
  alias ls='ls --color=auto'
fi

# Enable direnv if direnv is present
if [ -x /usr/local/bin/direnv ]; then
  eval "$(direnv hook bash)"
fi

# Refresh window size after each command
shopt -s checkwinsize

# Append to the history file, don't overwrite it
shopt -s histappend

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

alias vi='vim'
alias la='ls -Alh'
alias l='ls -CF'
alias rm='rm -i'
alias mv='mv -i'
alias tmux='tmux -2'

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/:\1/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"
PS1="$GREEN\u@$HOSTNAME$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "

export CLICOLOR=1
export LSCOLORS=exfxcxdxcxegedabagacad
export LS_OPTIONS='--color=auto'
export PATH=$PATH:/usr/local/bin:.
export LESS=' -R '
export TERM='xterm-256color'
