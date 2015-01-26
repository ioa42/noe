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

PROMPT='%F{green}%n%f at %F{magenta}%m%f in %~ %F{yellow}\_o<%f '
