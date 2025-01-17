# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH=~/.composer/vendor/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/php@7.3/bin:$PATH"
export PATH="/usr/local/opt/php@7.3/sbin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/Users/sabartampubolon/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
# plugins=(git)

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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"




#############################
#### My personal aliases ####
#############################

# Artisan aliases
alias pa='php artisan'
alias pam='php artisan migrate'
alias pams='php artisan migrate --seed'
alias pamf='php artisan migrate:fresh'
alias pakeygen='php artisan key:generate'
alias paq='php artisan queue:work'
alias paseed='php artisan db:seed'
alias pamake='php artisan make:'
alias paclear='php artisan config:clear && php artisan cache:clear && php artisan view:clear'

# Composer aliases
alias cda='composer dump-autoload'
alias ci='composer install'
alias cr='composer remove'
alias cu='composer update'

# Git aliases
alias gclist='git config --list'
alias glog='git log'
alias gstatus='git status'
alias gbranch='git branch'
alias gpull='git pull origin'
alias gpush='git push origin'
alias gnah='git reset --hard && git clean -df'
alias gcommit='git add --all && git commit -m'
alias gwip='git add --all && git commit -m "wip"'
alias gmerge='fgmerge(){git fetch origin && git merge origin $1};fgmerge'

# PHP Unit aliases
alias pu='./vendor/bin/phpunit'
alias puf='./vendor/bin/phpunit --filter'

# SSH Command
alias salist='ssh-add -l'
alias dyned='ssh-add -D && ssh-add ~/.ssh/id_rsa_dyned_com'
alias gmail='ssh-add -D && ssh-add ~/.ssh/id_rsa_gmail_com'
alias gasdyned='git config user.name "stampubolon" && git config user.email "stampubolon@dyned.com"'
alias gasgmail='git config user.name "margatampu" && git config user.email "sabartampubolon@gmail.com"'
alias gcdyned='fgcdyned(){dyned && mkdir $2 && cd $2 && git clone git@github.com-dyned:DynEd/$1.git . && gasdyned};fgcdyned'
alias gcgmail='fgcgmail(){gmail && mkdir $2 && cd $2 && git clone git@github.com-gmail:margatampu/$1.git . && gasgmail};fgcgmail'

# SSH Development
alias godev='ssh -i ~/Settings/DynEd/Developer.pem ubuntu@13.251.3.234'
