# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="~/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="eze"

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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  osx
  python
  brew
  cp
  colored-man-pages
  sublime
  django
  composer
  symfony2
  themes
  npm
  node
)

source $ZSH/oh-my-zsh.sh
source ~/.exports
source ~/.functions

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=fr_FR.UTF-8

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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

## CUSTOM ##
export TERM="xterm-256color"

# Ne pas confirmer si rm *
setopt rmstarsilent

# Nvim to vim
alias vim="neovim"

#find all service on a port
alias port-d="sudo lsof -i" # ex: sudo lsof -i :80

# Source up the zsh files
alias sup='source ~/.zshrc'

# Shorcuts
alias s="cd ~/Projects/Sites/"
alias flnc="cd ~/Projects/Sites/Freelance/"
alias blog="cd ~/Projects/Sites/Freelance/eze-blog/"
alias vlc="open /Applications/VLC.app -n"
alias odocker="open /Applications/Docker.app"

# CARAMIA
alias cara="cd ~/Projects/Sites/Caramia/"
alias muffin="cd ~/Projects/Sites/Caramia/muffin/"
alias rap="cd ~/Documents/Rapport/Versions/"
alias epok="cara && epoka-site/epoka-site && code ."
alias vinci="cara && vinci/vinci-site && code ."
alias mcc="make cc"
alias idev="open /Applications/Sublime\ Merge.app;open /Applications/Visual\ Studio\ Code.app/"
alias muf="idev && open /Applications/Slack.app;open /Applications/Docker.app"
alias sdev="pkill Docker ;pkill sublime_merge ;pkill Sequel ;pkill Slack ;pkill Postman ;osascript -e 'tell application \"Terminal\" to quit'"
alias t="osascript -e 'tell application \"Terminal\" to quit'"
alias chconf="git cherry-pick -n a120a6c98be7fa073b2d6be2b8eb284105fc8d1a && git reset docker-compose.yml"
alias mufb="muffin && cd ./dockerV3 && make start"
alias mufbs="muffin && cd ./dockerV3 && make stop"
alias muff="muffin && cd ./front && make start"
alias mufr="muffin && cd ./bridgev3 && make start"
alias mufrs="muffin && cd ./bridgev3 && make stop"
alias muffinstart="muf && mufb && mufr && muff"
alias muffinstop="mufrs && mufbs"

# GIT
alias lgl="git lgl"
alias gid="git del"
alias gifd="git fdel"


# Display or hide hidden files
alias show_hidden='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
alias hide_hidden='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'

# Need to install tree before
alias tree='tree --dirsfirst'

# Python specific
alias py='python3'

# Terminal in english
export LC_ALL=C

# Ouvre emacs en app plutot qu'en cli
alias emacs="open /Applications/Emacs.app"

export PATH=~/.gem/ruby/2.6.0/bin:/usr/local/opt/ruby/bin:~/.bin/:/usr/local/sbin:~/.composer/vendor/bin/:~/Library/Python/3.7/bin:$PATH

# APACHE
alias vhost="sudo vim /etc/apache2/extra/httpd-vhosts.conf && sudo apachectl restart"

# MAC COMMAND RAPPEL
# sudo purge -> like a reboot to clean the mac
# caffeinate -> stay awake until task is completes also "caffeinate -t 60" (stay awake 60s)

# gruvbox theme on ls https://github.com/suntootoo/gruvbox-terminal
export CLICOLOR=1

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
#export PATH="$PATH:~/.emacs.d/doom-emacs/bin"
