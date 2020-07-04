export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Use lf to switch directories and bind it to ctrl-d
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^d' 'lfcd\n'

bindkey -s '^x' 'ncdu\n'

plugins=(git sudo colored-man-pages)

source $ZSH/oh-my-zsh.sh

source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases
alias gs="git status"
