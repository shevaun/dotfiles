# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="shevaun"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source $HOME/.project_aliases
source $HOME/.bash_aliases

[[ -s "/opt/boxen/env.sh" ]] && source "/opt/boxen/env.sh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gem src bundler osx)

source $ZSH/oh-my-zsh.sh
# disable correction prompt
setopt nocorrectall

# Customize to your needs...

export PATH=/usr/local/bin:$PATH #for homebrew
export PATH=$PATH:$HOME/scripts
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:/Library/Frameworks/GDAL.framework/Versions/1.8/Programs/
export PATH=$PATH:/usr/local/share/python
export PATH=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin:$PATH

export HISTCONTROL=ignoredups
export HISTFILESIZE=100000
export HISTSIZE=100000
export HISTTIMEFORMAT="[%d/%m/%y %T] "

export RUBY_HEAP_MIN_SLOTS=800000
export RUBY_HEAP_FREE_MIN=100000
export RUBY_HEAP_SLOTS_INCREMENT=300000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=79000000

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
