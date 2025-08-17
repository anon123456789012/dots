#####################################################################################################

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.config/zsh/.zshrc"

#----------------------------------------------------------------------------------------------------

# environment variables

# default editor to neovim
export EDITOR="/usr/bin/nvim"
export VISUAL="/usr/bin/nvim"

# allow colors in less pager
export LESS="--RAW-CONTROL-CHARS"

# change manpager from less to nvimpager
export MANPAGER="nvim +Man!"

# add local programs to path
#path+=($HOME/.local/bin/**/*(N/))
path+=($HOME/.local/bin)
path+=($HOME/.local/bin/games)
path+=($HOME/.local/bin/games/win)
export PATH

#----------------------------------------------------------------------------------------------------

# terminal preferences

autoload -Uz compinit
compinit
# :nd of lines added by compinstall

# show all files in directory after cding
function chpwd() {
    emulate -L zsh
	    ls -a --color --group-directories-first -v
}

# colorize output to preferences set in dircolors
if [[ -f "$HOME/.dir_colors" ]]; then
	eval $(dircolors -b "$HOME/.dir_colors")
elif [[ -f "/etc/DIR_COLORS" ]]; then
	eval $(dircolors -b "/etc/DIR_COLORS")
else
	eval $(dircolors)
fi

# enable vi mode
bindkey -v
# allows previous command to be called in insert mode
bindkey "^P" up-line-or-search
bindkey "^N" down-line-or-search
# enables ctrl+a to go to beginning of line
bindkey "^A" vi-beginning-of-line
# enables ctrl+e to go to end of line
bindkey "^E" vi-end-of-line
bindkey "^?" backward-delete-char
# enables reverse-i-search in insert mode
bindkey "^R" history-incremental-search-backward

#----------------------------------------------------------------------------------------------------

# aliases

alias					  cp="cp -v"
alias					curl="curl -JLOR"
alias					doas="doas "
alias					  ls="ls -a --color --group-directories-first -v"
alias					  mv="mv -v"
alias					  rm="rm -v"
alias					diff="colordiff"
alias				   mupdf="mupdf-x11"
alias					   n="nnn -d -e -A -H"
alias					 neo="fastfetch"
alias				neofetch="fastfetch"
alias					 nnn="nnn -d -e -A -H"
alias					  py="python"
alias					 sub="pstree -C age -s $$"
alias					 vim="nvim"
alias					  vi="nvim"
alias					wget="wget2"

#####################################################################################################
