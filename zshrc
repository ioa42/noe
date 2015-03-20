# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

PROMPT='%F{green}%n%f at %F{magenta}%m%f in %~ %F{yellow}\_o<%f '
export EDITOR='emacs -nw'
export PAGER='most'

# Attempts to use DISTCC, FIXME: Not working yet (ask clement ?)
export DISTCC_POTENTIAL_HOSTS='localhost node7'
export DISTCC_HOSTS='localhost node7'

alias ls='ls --color'
alias ll='ls --color -l'
alias la='ls --color -la'
alias lisa='ls --color -lisah'
alias resource='source ~/.zshrc'
alias tmux="TERM=screen-256color-bce tmux"
alias kim='ssh root@ns368921.ip-37-59-37.eu'
alias e='emacs -nw'

# Without this line, apt-get do not work on nuc5
if [ "$HOST" = 'nuc5' ]; then
       PATH=/usr/local/sbin:/usr/sbin:/sbin:$PATH
fi
