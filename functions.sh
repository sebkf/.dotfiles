### FUNCTIONS ###

# Create directory and cd in it
take() {
  mkdir -p -- "$1"
  cd -P -- "$1"
}

# Replace file extension
mvx() {
  for file in *."$1"
  do
    mv "$file" "$(basename "$file" ."$1")."$2""
  done
}

# Backup .dotfiles
dotbkp () {
  cd $HOME/.dotfiles/
  git add .
  current="`date +'%Y-%m-%d %H:%M:%S'`"
  msg="Updated: $current"
  git commit -m "$msg" # Updated: 2019-08-28 10:22:06
  git push
  cd -
}

# Restore .dotfiles
dotrst () {
  cd $HOME/.dotfiles
  git pull
  source $HOME/.zshrc
  cd -
}
