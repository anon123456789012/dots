#---------------------------------------------------------------------------------------------------
# interactive env
#----------------------------------------------------------------------------------------------------

# prompt
PS1="%F{red}[%f%n%F{red}@%f%M%F{red}] - [%f%~%F{red}] - [%f%#%F{red}]%f > "

# history setup
HISTFILE="${HISTFILE:-$HOME/.cfg/zsh/.zshhst}"		# use custom history file, fallback if not set
HISTSIZE=1000										# number of lines kept in memory
SAVEHIST=1000										# number of lines saved to histfile
[[ -f "$HISTFILE" ]] || : >> "$HISTFILE"			# create histfile if it doesn't exist

# path prepends
path=(
  $HOME/.local/bin
  $HOME/.local/bin/games
  $HOME/.local/bin/games/win
  $path
)

# pager setup
export LESS="--RAW-CONTROL-CHARS" # helps less deal with ansi color codes
export MANPAGER="nvim +Man!"

# disable escape key timeout
KEYTIMEOUT=0

#---------------------------------------------------------------------------------------------------
# terminal preferences
#---------------------------------------------------------------------------------------------------

# load advanced tab completion
autoload -Uz compinit
compinit

# show all files in directory after cding
function chpwd() {
    emulate -L zsh
    ls -a --color --group-directories-first -v
}

# colorize directories
[[ -f "$HOME/.cfg/.dir_colors" ]] && eval "$(dircolors -b "$HOME/.cfg/.dir_colors")"

# history opts
setopt EXTENDED_HISTORY			# add timestamps to entries
setopt HIST_IGNORE_ALL_DUPS		# ignore duplicate commands
setopt HIST_REDUCE_BLANKS		# remove unnecessary blank lines from history
setopt HIST_VERIFY				# show command for editing before execution during history recall when using !!, fc, or similar command (does not impact reverse/forward searches)
setopt INC_APPEND_HISTORY		# write each command immediately to histfile
setopt SHARE_HISTORY			# share history across multiple interactive shells

#---------------------------------------------------------------------------------------------------
# keybinds
#---------------------------------------------------------------------------------------------------

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

#---------------------------------------------------------------------------------------------------
# aliases
#---------------------------------------------------------------------------------------------------

alias					  cp="cp -v"
alias					curl="curl -JLOR"
alias					doas="doas "
alias					  ls="ls -a --color --group-directories-first -v"
alias					  mv="mv -v"
alias					  rm="rm -v"
alias					diff="colordiff"
alias				   mupdf="mupdf-x11"
alias					   n="nnn -d -e -A -H"
alias					 nnn="nnn -d -e -A -H"
alias					  py="python"
alias					 sub="pstree -C age -s $$"
alias					   v="nvim"
alias					  vi="nvim"
alias					 vim="nvim"
alias					wget="wget2"
