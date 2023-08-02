export EDITOR='nvim' export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
# export GPG_TTY=$(tty)
# export PATH=$HOME/local/bin/:$HOME/.cargo/bin/:/$HOME/.local/share/coursier/bin/:$PATH
# export QEMU_HOME=$HOME/src/qemu-6.1.0
PROMPT='%F{2}%n%F{300}@%m:%F{220}%~ %F{300}$%f '

if [[ "$TERM" == "tmux-256color" ]]; then
  export TERM=screen-256color
fi

# [ -d $HOME/dotfiles/bin/textemp ] && export TEXTEMP="$HOME/dotfiles/bin/textemp"
# [ -d $HOME/dotfiles/bin/mdtemp ] && export MDTEMP="$HOME/dotfiles/bin/mdtemp"

# stty -ixon # disable Ctrl S and Ctrl Q terminal suspend

# Use lfcd to switch directories
# hidden files are shown with zh when in lfcd
# lfcd () {
#     tmp="$(mktemp)"
#     lfrun -last-dir-path="$tmp" "$@"
#     if [ -f "$tmp" ]; then
#         dir="$(cat "$tmp")"
#         rm -f "$tmp"
#         [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
#     fi
# }

plugins=(git colored-man-pages zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Need these below ohmyzsh source to make it work in tmux
bindkey '^ ' autosuggest-accept
# bindkey -s '^d' 'lfcd\n'
# bindkey -s '^q' 'ncdu\n'
# bindkey -s '^z' 'vifmrun\n'

###############
### cdspear ###
###############

# cdspear aliases
# alias cdspear_show="cdspear && [ -s /tmp/cdspear_result.dat ] && cd \"\$(cat /tmp/cdspear_result.dat)\""
# alias cdspear_mark="cdspear -m"
# alias cdspear_j0="cdspear -j 0 && [ -s /tmp/cdspear_result.dat ] && cd \"\$(cat /tmp/cdspear_result.dat)\""
# alias cdspear_j1="cdspear -j 1 && [ -s /tmp/cdspear_result.dat ] && cd \"\$(cat /tmp/cdspear_result.dat)\""
# alias cdspear_j2="cdspear -j 2 && [ -s /tmp/cdspear_result.dat ] && cd \"\$(cat /tmp/cdspear_result.dat)\""
# alias cdspear_j3="cdspear -j 3 && [ -s /tmp/cdspear_result.dat ] && cd \"\$(cat /tmp/cdspear_result.dat)\""

# cdspear keybinds to call aliases
# bindkey -s '^s' 'cdspear_show\n'
# bindkey -s '^[m' 'cdspear_mark\n'
# bindkey -s '^y' 'cdspear_j0\n'
# bindkey -s '^u' 'cdspear_j1\n'
# bindkey -s '^o' 'cdspear_j2\n'
# bindkey -s '^f' 'cdspear_j3\n'



# Set GNU colors for alacritty
# LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:';
# export LS_COLORS

# lf icons
# export LF_ICONS="\
# tw=:st=:ow=:dt=:di=:fi=:ln=:or=:ex=:*.c=:*.cc=:*.clj=:*.coffee=:*.cpp=:*.css=:*.d=:*.dart=:*.erl=:*.exs=:*.fs=:*.go=:*.h=:*.hh=:*.hpp=:*.hs=:*.html=:*.java=:*.jl=:*.js=:*.json=:*.lua=:*.md=:*.php=:*.pl=:*.pro=:*.py=:*.rb=:*.rs=:*.scala=:*.ts=:*.vim=:*.cmd=:*.ps1=:*.sh=:*.bash=:*.zsh=:*.fish=:*.tar=:*.tgz=:*.arc=:*.arj=:*.taz=:*.lha=:*.lz4=:*.lzh=:*.lzma=:*.tlz=:*.txz=:*.tzo=:*.t7z=:*.zip=:*.z=:*.dz=:*.gz=:*.lrz=:*.lz=:*.lzo=:*.xz=:*.zst=:*.tzst=:*.bz2=:*.bz=:*.tbz=:*.tbz2=:*.tz=:*.deb=:*.rpm=:*.jar=:*.war=:*.ear=:*.sar=:*.rar=:*.alz=:*.ace=:*.zoo=:*.cpio=:*.7z=:*.rz=:*.cab=:*.wim=:*.swm=:*.dwm=:*.esd=:*.jpg=:*.jpeg=:*.mjpg=:*.mjpeg=:*.gif=:*.bmp=:*.pbm=:*.pgm=:*.ppm=:*.tga=:*.xbm=:*.xpm=:*.tif=:*.tiff=:*.png=:*.svg=:*.svgz=:*.mng=:*.pcx=:*.mov=:*.mpg=:*.mpeg=:*.m2v=:*.mkv=:*.webm=:*.ogm=:*.mp4=:*.m4v=:*.mp4v=:*.vob=:*.qt=:*.nuv=:*.wmv=:*.asf=:*.rm=:*.rmvb=:*.flc=:*.avi=:*.fli=:*.flv=:*.gl=:*.dl=:*.xcf=:*.xwd=:*.yuv=:*.cgm=:*.emf=:*.ogv=:*.ogx=:*.aac=:*.au=:*.flac=:*.m4a=:*.mid=:*.midi=:*.mka=:*.mp3=:*.mpc=:*.ogg=:*.ra=:*.wav=:*.oga=:*.opus=:*.spx=:*.xspf=:*.pdf=:*.nix=:"

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# [ -f $HOME/.config/env/.fzfrc ] && source $HOME/.config/env/.fzfrc

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
