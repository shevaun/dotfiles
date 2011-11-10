# git aliases

alias ga='git add '
alias gaa="git add -A"
alias gb='git branch '
alias gca='git commit -a '
alias gco='git checkout '
alias gl="git pull"
alias gm='git merge '
alias gp="git push"
alias gpr='git pull --rebase'
alias gs="git status"

function gc() {
  git commit -m "$*"
}

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

alias ber="bundle exec rake"
alias be="bundle exec"
alias bec="bundle exec cap"
alias beu="bundle exec unicorn_rails"
alias zbr="bzr"

function pgrep() {
  grep -nHr $* .                 
}

#project aliases

alias cdrs="cd ~/src/github/nzpost/rubycas-server"
alias cdad="cd ~/src/nzpost/addressing"
alias cdud="cd ~/src/nzpost/user_directory"