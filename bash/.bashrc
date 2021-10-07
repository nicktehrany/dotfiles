export GPG_TTY=$(tty)
export PATH=/home/nicktehrany/local/bin/:$PATH

[ -d $HOME/.config/env/textemp ] && export TEXTEMP="$HOME/.config/env/textemp"
[ -d $HOME/.config/env/mdtemp ] && export MDTEMP="$HOME/.config/env/mdtemp"
[ -f $HOME/.config/env/textemp/textemp.sh ] && source $HOME/.config/env/textemp/textemp.sh
[ -f $HOME/.config/env/mdtemp/mdtemp.sh ] && source $HOME/.config/env/mdtemp/mdtemp.sh

# Aliases
alias glog="git log --all --graph --decorate --oneline"

# Need to run discord with no-sandbox to stop lagging on calls and setsid to detach process from parent terminal process
alias discord='setsid discord --no-sandbox'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
