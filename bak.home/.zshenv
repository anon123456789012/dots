# set zsh dotfiles directory in .config instead of $HOME

export XDG_CONFIG_HOME="$HOME/.cfg"
export ZDOTDIR="$HOME/.cfg/zsh"

# set prompt
export PS1="%F{red}[%f%n%F{red}@%f%M%F{red}] - [%f%~%F{red}] - [%f%#%F{red}]%f > "
