# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

alias ber="bundle exec rake"
alias be="bundle exec"
alias bec="bundle exec cap"
alias beu="bundle exec unicorn_rails"
alias zbr="bzr"
alias zt="zeus test"
alias zc="zeus cucumber"
alias zr="zeus rake"
alias zrg="zeus rake routes | grep"
alias zm="zeus rake db:migrate db:test:prepare"

alias migrate="rake db:migrate db:test:prepare"


function pgrep() {
  grep -nHr $* .
}


alias watch="less -r +GF"
alias ssh=ssh-background
