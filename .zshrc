# Path to your oh-my-zsh installation.
export ZSH="/home/wvincent/.config/zsh/.oh-my-zsh"

ZSH_THEME="dracula"

HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh
source ~/.config/zsh/antigen.zsh

# Load oh-my-zsh library
antigen use oh-my-zsh

# Plugins with oh-my-zsh
antigen bundle git 
antigen bundle pip
antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle fasd

# External Plugins
antigen bundle psprint/zsh-navigation-tools
antigen bundle desyncr/auto-ls
antigen bundle MichaelAquilina/zsh-you-should-use
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle supercrabtree/k
antigen bundle lukechilds/zsh-better-npm-completion
antigen bundle lukechilds/zsh-nvm

# Must be last plugin loaded
antigen bundle zsh-users/zsh-syntax-highlighting

# Apply Config
antigen apply 

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias install='sudo pacman -S'
alias update='sudp pacman -Syu'
