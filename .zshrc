###------- XDG SPEC -------###

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_RUNTIME_DIR="/run/user/$(id -u)"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"

###------- EXPORTS -------###

export ZSH="$XDG_DATA_HOME/oh-my-zsh"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export ANDROID_HOME="$XDG_DATA_HOME/android"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export GOPATH="$XDG_DATA_HOME/go"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export HISTFILE="$XDG_STATE_HOME/zsh/history"
export LESSHISTFILE="$XDG_STATE_HOME/less/history"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/.npmrc"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

export WLR_NO_HARDWARE_CURSORS=1

###------- SOURCE -------###

source $ZDOTDIR/ghplug.zsh
source $ZDOTDIR/.fzf.zsh

###------- ALIAS -------###

alias vimc="cd $XDG_CONFIG_HOME/nvim"
alias vimco="cd $XDG_CONFIG_HOME/nvim && nvim ."
alias zshrc="cd $ZDOTDIR && nvim .zshrc"
alias zshrco="cd $ZDOTDIR && nvim ."
alias zshso="cd $XDG_CONFIG_HOME/zsh && source .zshrc"
alias pull="git pull"
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"
alias ls="eza --icons -a -F -H --group-directories-first --git"
alias ll="eza --icons -alF"
alias tree="eza --tree"

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles-arch --work-tree=$HOME"

###------- PATH -------###
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$CARGO_HOME/bin

# a smarter cd command, see https://github.com/ajeetdsouza/zoxide for more info
eval "$(zoxide init --cmd cd zsh)"

# term theme using starship.rs, see https://starship.rs/
eval "$(starship init zsh)"

# persist colorscheme on wal on reboot
wal -R

# because obviously right?
neofetch
