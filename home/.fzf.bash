# Setup fzf
# ---------
if [[ ! "$PATH" == */home/benj/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/benj/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/benj/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/benj/.fzf/shell/key-bindings.bash"
