# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export EDITOR="vim"
export CONFIGDIR="$HOME/.dotfiles"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="veggiemonk"
#ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(ubuntu python autojump history history-substring-search vim-interaction)
plugins+=(debian encode64 python git git-extras pip sudo docker bower mvn node npm)
plugins+=(vagrant golang github jump mvn sysadmin zsh_reload tmux colored-man)
plugins+=(zsh-syntax-highlighting k grunt alias-tips)

#TODO: set platform with $(uname) so that zshrc is compatible osx and linux

source $ZSH/oh-my-zsh.sh

source $CONFIGDIR/alias.zsh
source $CONFIGDIR/export.zsh
#source $CONFIGDIR/automount.zsh
source $CONFIGDIR/tmuxinator.zsh

# User configuration

# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# GIT CONFIG
GIT_AUTHOR_NAME="Julien Bisconti"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="julien.bisconti@gmail.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"

#####
#### TEAMOCIL COMPLETION
#####

#compctl -g '~/.teamocil/*(:t:r)' teamocil

HISTFILE=~/.zshhistory
HISTSIZE=100000
#SAVEHIST=
# prevent particular entries from being recorded 
# into a history by preceding them with at least one space
setopt hist_ignore_space


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
#export SSH_KEY_PATH="~/.ssh/id_rsa"


