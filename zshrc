source $HOME/.aliasrc

for zsh_source in $HOME/.zsh_profile.d/*.zsh; do
  source $zsh_source
done

cd_to_most_recently_opened_directory

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="/usr/local/opt/sbt@0.13/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/Sandbox/dotfiles/bin:$PATH"

ssh-add

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
