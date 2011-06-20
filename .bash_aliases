alias pu='pushd'
alias cd='pushd'
alias cd-='popd'
alias cd--='popd-2'
alias cd---='popd-3'
alias po='popd'
alias v='vim'
alias d='dirs -v'
alias gs="git status"
function gc() {
  git commit -m "$*"
}
alias gp="git push"
alias gl="git pull"
alias ga="git add"
alias gaa="git add -A"
alias sc='script/console'
alias ss='script/server'
alias sg='script/generate'

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

