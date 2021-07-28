stty -ixon # disable Ctrl S and Ctrl Q terminal suspend

export TEXTEMP="$HOME/.config/env/textemp"

#source $HOME/.config/env/textemp/textemp.sh
source ~/Documents/Projects/textemp/textemp.sh

# Aliases
alias glog="git log --all --graph --decorate --oneline"

# Need to run discord with no-sandbox to stop lagging on calls and setsid to detach process from parent terminal process
alias discord='setsid discord --no-sandbox'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
