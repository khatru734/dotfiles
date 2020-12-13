# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Tell history to ignore duplicates
export HISTCONTROL=ignoreboth

# Tell tmux that iTerm supports 256 colors
export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH="/Users/jerrymaddux/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs prompt_char)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time public_ip)
#POWERLEVEL9K_DISABLE_RPROMPT=true
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
 HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(docker docker-compose git)
plugins=(git vi-mode ansible zsh-autosuggestions zsh-syntax-highlighting bgnotify)

source $ZSH/oh-my-zsh.sh

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

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases

 alias bbe='open /Applications/BBEdit.app'
 alias confz='vim ~/.zshrc'
 alias mysql=/usr/local/mysql/bin/./mysql
 alias mysqladmin=/usr/local/mysql/bin/./mysqladmin
 alias psh='clear && pwsh'
 alias vimconf='vim ~/.vimrc'
 alias rm='rm -i'
 alias mv='mv -i'

# git aliases

 alias gc='git commit'
 alias gca='git commit -a'
 alias gcam='git commit -am'
 alias gcm='git commit -m'
 alias gits='git status'
 alias gp='git push'
 alias gpp='cd ~/ansible && git pull && git push origin main'

#For interacting with .cfg repository

#  alias conf='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# ls aliases

 alias ls='exa -alFGh --time-style=long-iso'

# miscelleaneous alias
 alias c='clear'
 alias h='history'
 alias nf='neofetch'
 alias rl='exec zsh'
 alias weather='curl wttr.in'
 alias rgn='ranger'
 alias tree='tree -C'
# Vim aliases 

#Point vim to MacVim
alias vim='/usr/local/Cellar/macvim/8.2-166_1/bin/vim'

# Open YAML files in Vim automatically. No need to even type vim first!

alias -s {yml,yaml}=vim

# alias ohmyzsh="mate ~/.oh-my-zsh"

# Eliminate need to type "fg %[num] in ZSH"

fg() {
    if [[ $# -eq 1 && $1 = - ]]; then
        builtin fg %-
    else
        builtin fg %"$@"
    fi
}

# Run neofetch on startup
neofetch

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
