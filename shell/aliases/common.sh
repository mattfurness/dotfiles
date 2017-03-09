alias reload='fresh && source ~/.bash_profile'
alias ls='ls -Gla'
alias sym='ln -s '
alias servedir='python -m SimpleHTTPServer 8000'
alias short='alias | ag'
alias hist='cat ~/.bash_history | ag '
alias nvim="nvim -u ~/.vimrc"
alias vim="nvim"
alias npi='docker-compose down && direnv allow && docker-compose up -d'

export EDITOR="nvim -u ~/.vimrc"
