alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias glog="git log --all --graph --decorate --oneline"

# cdspear aliases
alias cdspear_show="cdspear && [ -s /tmp/cdspear_result.dat ] && cd \"\$(cat /tmp/cdspear_result.dat)\""
alias cdspear_mark="cdspear -m"
alias cdspear_j0="cdspear -j 0 && [ -s /tmp/cdspear_result.dat ] && cd \"\$(cat /tmp/cdspear_result.dat)\""
alias cdspear_j1="cdspear -j 1 && [ -s /tmp/cdspear_result.dat ] && cd \"\$(cat /tmp/cdspear_result.dat)\""
alias cdspear_j2="cdspear -j 2 && [ -s /tmp/cdspear_result.dat ] && cd \"\$(cat /tmp/cdspear_result.dat)\""
alias cdspear_j3="cdspear -j 3 && [ -s /tmp/cdspear_result.dat ] && cd \"\$(cat /tmp/cdspear_result.dat)\""
