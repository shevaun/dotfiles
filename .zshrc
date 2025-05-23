# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

eval "$(/opt/homebrew/bin/brew shellenv)"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="shevaun"

export SKIP_CONSOLE_LOGS=true
export PROCFILE_RUNNER=overmind

export VISUAL=vim
export EDITOR="$VISUAL"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

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
plugins=(macos bundler)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH=/opt/homebrew/bin:$PATH #for homebrew
export PATH=$PATH:$HOME/scripts

export PATH=/Users/shevaun/Library/Python/3.10/bin:$PATH

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# disable correction prompt
# setopt nocorrectall # DO I STILL NEED THIS?

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias sspec="spring rspec"
alias sails="spring rails"

source $HOME/.project_aliases
source $HOME/.bash_aliases
source $HOME/.git_aliases
source $HOME/.jj_aliases

export HISTCONTROL=ignoredups
export HISTFILESIZE=100000
export HISTSIZE=100000
export HISTTIMEFORMAT="[%d/%m/%y %T] "

export RUBY_GC_HEAP_INIT_SLOTS=800000
export RUBY_HEAP_FREE_MIN=100000
export RUBY_HEAP_SLOTS_INCREMENT=300000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=79000000
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

export JAVA_HOME=/Library/InternetPlugIns/JavaAppletPlugin.plugin/Contents/Home


alias rake="noglob bundled_rake"

function zt-diff() { rspec "$*" $(git diff --name-only --diff-filter=ACMR origin/master... -- "spec/**/*_spec.rb") }
function zc-diff() { cucumber "$*" $(git diff --name-only --diff-filter=ACMR origin/master... -- "features/**/*.feature") }

function buildkite-bastion() {
  aws-vault exec prod-console -- ssh buildkite-bastion
}

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

eval "$(rbenv init -)"
# eval "$(nodenv init -)"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
