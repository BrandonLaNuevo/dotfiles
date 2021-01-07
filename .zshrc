# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
ZSH=~/.oh-my-zsh/

# Automatically start a tmux session
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="refined"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting)


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export EDITOR='vim'
export GIT_EDITOR='vim'

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

# Set autocd, and popular directories
setopt auto_cd
cdpath=($HOME/Documents)



# Enable Vim mode in ZSH
bindkey -v
export KEYTIMEOUT=1
#
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^E' edit-command-line                   # Opens Vim to edit current command line
bindkey '^R' history-incremental-search-backward # Perform backward search in command line history
bindkey '^S' history-incremental-search-forward  # Perform forward search in command line history
bindkey '^P' history-search-backward             # Go back/search in history (autocomplete)
bindkey '^N' history-search-forward              # Go forward/search in history (autocomplete)
bindkey -M vicmd "^V" edit-command-line

# Auto-start tmux on shell start
# tmux attach &> /dev/null
# if [[ $TERM != "screen" ]]; then
#     exec tmux
# fi
#[[ $TERM != "screen" ]] && exec tmux

## fff settings
export FFF_LS_COL2=2
## Aliases

# apps
alias rtv='rtv --theme mine'
alias f='fff'

# NPM
alias gatsby='~/.npm-global/bin/gatsby'
alias fb='~/.npm-global/bin/fb-messenger-cli'
alias pm2='~/.npm-global/bin/pm2'
alias serve='~/.npm-global/bin/serve'

# Utilities
alias wifi-menu='nmtui'
alias wifi-scan='nmcli -t -f active,ssid dev wifi'
alias batt="acpi"
alias batt-stat="upower -i /org/freedesktop/UPower/devices/battery_BAT0"
alias qq="exit"
alias bcalc="bcal"
alias flux="redshift -O"
alias oflux="redshift -O 6500"
alias smart="sudo smartctl -a /dev/sda"
alias hibernate="sudo systemctl hibernate"
alias copy="rsync --info=progress2"
alias cclip='xclip -selection clipboard'
alias rvim='sudo vim -u ~/.vimrc'
# Config
alias i3config="vim ~/.config/i3/config"
alias barconfig="vim ~/.config/scripts/minimal-lemonbar/bar.sh"
alias .z="vim ~/.zshrc"
alias .v="vim ~/.vimrc"
# Rice
alias __="figlet"
alias ftch="sh ~/.config/scripts/fetch.sh"
# Tmux
alias t="tmux -2 -f ~/.tmux.conf"

# Startup
# Show todo list
cat ~/todo
