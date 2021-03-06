export CURRENT_PROJECT_PATH=$HOME/.current-project

setopt auto_cd
cdpath=($HOME/Sandbox $HOME/)

function chpwd {
  echo "$(pwd)" >! "$CURRENT_PROJECT_PATH"
  ls
}

cd_to_most_recently_opened_directory() {
  if [[ -f $CURRENT_PROJECT_PATH && -d "$(cat "$CURRENT_PROJECT_PATH")" ]]; then
    cd "$(cat "$CURRENT_PROJECT_PATH")"
  fi
}
