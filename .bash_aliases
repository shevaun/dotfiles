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


alias watch="less -r +GF"