###------- SOURCE -------###

source $ZDOTDIR/ghplug.zsh
source $ZDOTDIR/fzf.zsh
source $ZDOTDIR/update_kitty_window_title.zsh

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

# a smarter cd command, see https://github.com/ajeetdsouza/zoxide for more info
eval "$(zoxide init --cmd cd zsh)"

# term theme using starship.rs, see https://starship.rs/
eval "$(starship init zsh)"

# because obviously right?
neofetch
