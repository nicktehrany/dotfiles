export GPG_TTY=$(tty)
export PATH=$HOME/local/bin/:$PATH
export QEMU_BUILD=$HOME/src/qemu-6.1.0/build/

[ -d $HOME/.config/env/textemp ] && export TEXTEMP="$HOME/.config/env/textemp"
[ -d $HOME/.config/env/mdtemp ] && export MDTEMP="$HOME/.config/env/mdtemp"
[ -f $HOME/.config/env/textemp/textemp.sh ] && source $HOME/.config/env/textemp/textemp.sh
[ -f $HOME/.config/env/mdtemp/mdtemp.sh ] && source $HOME/.config/env/mdtemp/mdtemp.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
