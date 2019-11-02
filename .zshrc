#--------------------------------------------------------------------
# Enable custom functions
#--------------------------------------------------------------------
export fpath=(${ZDOTDIR:-$HOME}/myprofile/functions $fpath)
autoload -U $fpath[1]/*(.:t)

#--------------------------------------------------------------------
# Make sure ~/bin and /usr/local/bin are in my path
#--------------------------------------------------------------------
export PATH=$HOME/bin:/usr/local/bin:$PATH

#--------------------------------------------------------------------
#--------------------------------------------------------------------
setopt NO_CASE_GLOB             # Setting case-insensitive globbing

#--------------------------------------------------------------------
#--------------------------------------------------------------------
setopt AUTO_CD                  # Setting automatic cd

#--------------------------------------------------------------------
# History Settings
#--------------------------------------------------------------------
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
SAVEHIST=5000
HISTSIZE=2000
HISTORY_IGNORE="(ls|cd|pwd|exit|fhelp|ls -la)"
HIST_STAMPS="%Y-%m-%d %H:%M"
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY
setopt APPEND_HISTORY
setopt HIST_NO_STORE
setopt HIST_REDUCE_BLANKS

#--------------------------------------------------------------------
# Enable Command Correction
#--------------------------------------------------------------------
setopt CORRECT
setopt CORRECT_ALL

#--------------------------------------------------------------------
# Path to your oh-my-zsh installation.
#--------------------------------------------------------------------
export ZSH="/home/ddurmon/.oh-my-zsh"

#--------------------------------------------------------------------
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#--------------------------------------------------------------------
ZSH_THEME="spaceship"
export SPACESHIP_EXIT_CODE_SHOW=true
export SPACESHIP_EXIT_CODE_PREFIX="["
export SPACESHIP_EXIT_CODE_SUFFIX="]"
export SPACESHIP_EXEC_TIME_PREFIX="last command took "

#--------------------------------------------------------------------
# Uncomment the following line to display red dots whilst waiting for completion.
#--------------------------------------------------------------------
COMPLETION_WAITING_DOTS="true"

#--------------------------------------------------------------------
# oh-my-zsh plugins
#--------------------------------------------------------------------
plugins=(git common-aliases zsh_reload aws)

#--------------------------------------------------------------------
# Enable Oh My ZSH
#--------------------------------------------------------------------
source $ZSH/oh-my-zsh.sh
