# OS check
IS_MAC=false
IS_LINUX=false

case "$(uname -s)" in
  Darwin*)
    IS_MAC=true
    ;;
  Linux*)
    IS_LINUX=true
    ;;
esac

# Manage PATH
prepend_path() {
  test -d "$1" && export PATH="$1:$PATH"
}

prepend_path_always() {
  export PATH="$1:$PATH"
}

# Source aliases
test -f $HOME/.dotfiles/aliases.sh && source $HOME/.dotfiles/aliases.sh
# Source functions
test -f $HOME/.dotfiles/functions.sh && source $HOME/.dotfiles/functions.sh
