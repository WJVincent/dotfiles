# ------------------------------------------------------------------------------
# ---------------------------- general shortcuts--------------------------------
# ------------------------------------------------------------------------------

# -- easy reverse cd --

alias .1='cd ..'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'

# -- easy ls with color--

alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls --color=auto'

#order by size
alias lt='ls --human-readable --size -1 -S --classify'

#only show hidden files
alias lh='ls -lisAd .[^.]*'

# -- grep with color --

alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

# -- system checks --

alias meminfo='free -m -l -t'
alias topmem='ps auxf | sort -nr -k 4'
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'
alias  getipe='curl ipinfo.io/ip'
alias speed='speedtest-cli --server 2406 --simple'

# -- true laziness --

alias c='clear'
alias update='sudo pacman -Syyu'
alias install='sudo pacman -S'
alias remove='sudo pacman -R'
alias www='python -m SimpleHTTPServer 8000'
alias vim='nvim'

# -- flatpak aliases --

alias slack='flatpak run com.slack.Slack'
# ------------------------------------------------------------------------------
# ---------------------------- git shortcuts -----------------------------------
# ------------------------------------------------------------------------------

alias gcmsg='git commit -m'
alias gco='git checkout'
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias ga='git add'
