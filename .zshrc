# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
unsetopt autocd beep nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dorian/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias neofetch="neofetch --source Downloads/ascii-art.ans --ascii_colors 7 1 --colors 1 1 1 1 7 7"
alias pamcan="pacman"
export PATH=$PATH:~/.cargo/bin

# opam configuration
[[ ! -r /home/dorian/.opam/opam-init/init.zsh ]] || source /home/dorian/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
export XDG_CURRENT_DESKTOP=sway
