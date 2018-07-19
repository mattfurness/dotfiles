alias fcd='cd $(fd -t d | fzf)'
alias hist='cat ~/.bash_history | ag '
alias ls='ls -Gla'
alias npi='docker-compose down && direnv allow && docker-compose up -d'
alias nvim="nvim -u ~/.vimrc"
alias reload='fresh && source ~/.bash_profile'
alias servedir='python -m SimpleHTTPServer 8000'
alias short='alias | ag'
alias sym='ln -s '
alias uuid='uuidgen | tr "[:upper:]" "[:lower:]" | tr -d "\n" | pbcopy'
alias vim="nvim"
alias xls="exa -Gla --git"
export EDITOR="nvim -u ~/.vimrc"
