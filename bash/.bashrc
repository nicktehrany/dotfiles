export GPG_TTY=$(tty)
export PATH=$HOME/local/bin/:$PATH
export QEMU_BUILD=$HOME/src/qemu-6.1.0/build/

[ -d $HOME/.config/env/textemp ] && export TEXTEMP="$HOME/.config/env/textemp"
[ -d $HOME/.config/env/mdtemp ] && export MDTEMP="$HOME/.config/env/mdtemp"
[ -f $HOME/.config/env/textemp/textemp.sh ] && source $HOME/.config/env/textemp/textemp.sh
[ -f $HOME/.config/env/mdtemp/mdtemp.sh ] && source $HOME/.config/env/mdtemp/mdtemp.sh

[ -f $HOME/.fzf.bash ] && source $HOME/.fzf.bash

if [ -f $HOME/.bash_aliases ]; then
    . $HOME/.bash_aliases
fi

if [ -f $HOME/.bash_aliases ]; then
    . $HOME/.bash_aliases
fi
