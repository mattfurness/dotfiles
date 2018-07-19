if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
