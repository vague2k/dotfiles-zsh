# simple script that dynamically changes kitty's window title
# to $PWD to be used in waybar

# 'precmd' is a special function name known to Zsh
[ ${ZSH_VERSION} ] && precmd() { update_kitty_window_title; }

# 'PROMPT_COMMAND' is a special environment variable name known to Bash
[ ${BASH_VERSION} ] && PROMPT_COMMAND=myprompt

# function called every time shell is about to draw prompt
update_kitty_window_title() {
  if [ ${ZSH_VERSION} ]; then
    local current_dir="${PWD/#$HOME/~}"  # replace home directory path with "~"
    echo -ne "\e]0;$current_dir\a"
  elif [ ${BASH_VERSION} ]; then
    local current_dir="${PWD/#$HOME/~}"
    echo -ne "\033]0;$current_dir\007"
  fi
}
