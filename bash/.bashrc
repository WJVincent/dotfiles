# ~/.bashrc

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

use_color=true

alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

unset use_color safe_term match_lhs sh
xhost +local:root > /dev/null 2>&1
complete -cf sudo

shopt -s checkwinsize
shopt -s expand_aliases
shopt -s histappend

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -e $HOME/.bash_functions ]; then
    source $HOME/.bash_functions
fi

export PS1="\[\e[32m\][\@]\[\e[35m\] \W \[\e[36m\]\$(parse_git_branch)\[\e[32m\]\\n[=>]\[\e[00m\] "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"

export PATH="$HOME/.emacs.d/bin:$PATH"
[ -f "/home/wvincent/.ghcup/env" ] && source "/home/wvincent/.ghcup/env" # ghcup-env
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
