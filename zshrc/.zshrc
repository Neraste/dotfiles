#          _
#  _______| |__  _ __ ___
# |_  / __| '_ \| '__/ __|
#  / /\__ \ | | | | | (__
# /___|___/_| |_|_|  \___|
#

# Aliases
alias la="ls -lha"
alias lr="ls -ltrh"
alias li="ls -1"
alias px="ps aux"
alias pp="px | grep"
alias du="du -sh"
alias pv="pv -tpreb"
alias xz="xz -v"
alias df="df -h"
alias free="free -h"
alias watch="watch -d"
alias tmux="tmux -2"
alias please="sudo"

# Modules
if [[ -f /usr/share/Modules/init/zsh ]]
then
    source /usr/share/Modules/init/zsh
fi

# Local directories
export PATH=$HOME/.local/bin:$PATH
export LD_LIBRARY_PATH=$HOME/.local/lib:$HOME/.local/lib64:$LD_LIBRARY_PATH
export CPATH=$HOME/.local/include:$CPATH
export MANPATH=$HOME/.local/man:$MANPATH

# Local configuration
if [[ -f $HOME/.zshrc-local ]]
then
    source $HOME/.zshrc-local
fi
