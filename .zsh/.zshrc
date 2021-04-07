export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
export TEXTEMP="$HOME/dotfiles/textemp"

# PROMPT='%{$fg_bold[blue]%}%~ %{$reset_color%}%{$fg_bold[white]\$%} '

ZSH_THEME="robbyrussell"

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

# autosuggestions accept suggestion with ctrl + space
bindkey '^ ' autosuggest-accept

# FOR NOW DISABLED SINCE I DON'T USE IT
# start tmux automatically when opening terminal
# if [ -z "$TMUX" ]
# then
#     tmux new
# fi

plugins=(git sudo colored-man-pages zsh-autosuggestions)

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
