### ALIASES ###

# Add confirmation when losing files
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# Tmux
alias att="tmux attach-session -t"
alias det="tmux detach"

# Search using PATTERN.
alias hg="history | grep"
alias ag="alias | grep"
# Recent history.
alias hi="history | tail -n20"


### MANAGE ALIAS FILE
# Define default editor
export EDITOR=`which nano`

# Edit aliases and functions in using the default editor specified in $EDITOR
alias ea="$EDITOR $HOME/.dotfiles/aliases.sh"
alias ef="$EDITOR $HOME/.dotfiles/functions.sh"
