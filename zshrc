# Created by newuser for 5.0.7

autoload -U compinit
autoload -U promptinit

compinit
promptinit

setopt correctall

PROMPT='%F{green}%n%f at %F{magenta}%m%f in %~ %F{yellow}\_o<%f '
