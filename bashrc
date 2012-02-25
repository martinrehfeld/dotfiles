complete -W "$(find /Users/martinrehfeld/Documents/workspace /Users/martinrehfeld/Documents/workspace/wooga -type d -maxdepth 1|sed -e 's/^\/Users\/martinrehfeld\/Documents\/workspace\///')" cdw

# directory-dependend completion
cd () {
  command cd "$@";
  if [ -f ./Rakefile ]; then
    complete -W "$(rake -T | awk '$1 == "rake" { print $2 }')" rake
  fi
  if [ -f ./Capfile ]; then
    complete -W "$(cap -T | awk '$1 == "cap" { print $2 }')" cap
  fi
}

alias scpresume="rsync --partial --progress --rsh=ssh"

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

cdw() {
  cd "$HOME/Documents/workspace/$1";
}
