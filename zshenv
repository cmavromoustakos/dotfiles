typeset -U path # ensure unique paths within PATH
export NODE_PATH=/usr/local/lib/node_modules
export LANG=en_US.UTF-8
export EDITOR=nvim
export RBENV_ROOT=$HOME/.rbenv
export REMOTE_GEM_CACHE_PATH=$HOME/.remote-gem-cache
export ZSH_HISTORY_PATH=$HOME/.zsh_history
export HOMEBREW_SEARCH_CACHE_PATH=$HOME/.homebrew-search-cache
export INTERNET_STATUS_LOG=/tmp/internet-status.log
export NVM_DIR="$HOME/.nvm"
export LOCAL_IP=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')

touch $INTERNET_STATUS_LOG
