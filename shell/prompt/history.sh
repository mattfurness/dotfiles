export HISTCONTROL=erasedups
shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
export HISTSIZE="INFINITE"
export ERL_AFLAGS="-kernel shell_history enabled"
