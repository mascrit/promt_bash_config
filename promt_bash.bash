COLOR_RED="\033[0;31m"
COLOR_YELLOW="\033[0;33m"
COLOR_GREEN="\033[0;32m"
COLOR_OCHRE="\033[38;5;95m"
COLOR_BLUE="\033[0;34m"
COLOR_WHITE="\033[0;37m"
COLOR_MORADO="\033[38;5;63m"
COLOR_AM="\033[38;5;69m"
COLOR_SAL="\033[38;5;202m"
COLOR_RESET="\033[0m"
COLOR_GRAY="\033[38;5;8m"
COLOR_MALI="\033[38;5;51m"

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/git(\1) /'
    }


PS1="\[$COLOR_MORADO\]\u\[$COLOR_RESET\]"
PS1+="\[$COLOR_SAL\]@\[$COLOR_RESET\]"
PS1+="\[$COLOR_AM\]\h\[$COLOR_RESET\]:"
PS1+="\[$COLOR_GRAY\]pt\\\l->\[$COLOR_RESET\]"
PS1+=" \[$COLOR_MALI\][\w] \[$COLOR_RESET\](\[$COLOR_RED\]"
PS1+="\[$COLOR_RED\]\$?\[$COLOR_RESET\])\n\[$COLOR_YELLOW\]\$(parse_git_branch)"
PS1+="\[$COLOR_RESET\]\\$ \[$(tput sgr0)\]"
export PS1

