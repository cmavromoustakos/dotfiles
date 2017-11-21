source $HOME/.aliasrc

for zsh_source in $HOME/.zsh_profile.d/*.zsh; do
  source $zsh_source
done

cd_to_most_recently_opened_directory

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin:$(brew --prefix qt@5.5)/bin"
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"

ssh-add
