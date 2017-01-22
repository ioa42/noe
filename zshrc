# Created by newuser for 5.0.7

autoload -U compinit
autoload -U promptinit

compinit
promptinit

alias ls='ls --color'
alias ll='ls --color -l'
alias la='ls --color -la'
alias lisa='ls --color -lisah'
alias resource='source ~/.zshrc'
alias t="tmux -2"

alias kim='ssh root@ns368921.ip-37-59-37.eu'

PROMPT='%F{green}%n%f at %F{magenta}%m%f in %~ %F{yellow}\_o<%f '
RPROMPT="`acpi`"
