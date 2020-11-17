# Setup fzf
# ---------
if [[ ! "$PATH" == */home/wvincent/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/wvincent/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/wvincent/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/wvincent/.fzf/shell/key-bindings.bash"
