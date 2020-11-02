export ZSH="$HOME/.oh-my-zsh"
export TEXTEMP="$HOME/dotfiles/textemp"

ZSH_THEME="af-magic"

# Use lf to switch directories and bind it to ctrl-d
# hidden files are shown with zh when in lfcd
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
bindkey -s '^x' 'tmux\n'
bindkey -s '^q' 'ncdu\n'

plugins=(git sudo colored-man-pages)

source $ZSH/oh-my-zsh.sh
source $HOME/dotfiles/textemp/textemp.sh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases
alias gs="git status"
alias gc="git commit"
alias ga="git add"
alias gpush="git push"
alias gstore="git config credential.helper store"
alias glog="git log --all --graph --decorate --oneline"
alias gd="git diff"
