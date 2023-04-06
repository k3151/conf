# Setup fzf
# ---------
if [[ ! "$PATH" == */home/vm02/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/vm02/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/vm02/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/vm02/.fzf/shell/key-bindings.zsh"
