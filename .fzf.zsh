# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/takahirohatakeyama/.fzf_bin/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/takahirohatakeyama/.fzf_bin/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/takahirohatakeyama/.fzf_bin/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/takahirohatakeyama/.fzf_bin/shell/key-bindings.zsh"
