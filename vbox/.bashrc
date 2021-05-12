##############################
## PROFILE SETTINGS ##
# INTRO
declare -A intro=(
    ["1"]="where is bhatman?"
    ["2"]="how are things so far?"
    ["3"]="what made you smile today?"
    ["4"]="don't forget your login/logout and health dec :)"
    ["5"]="would you rather be really hot or really cold?"
    ["6"]="how can I be of assistance?"
    ["7"]="what song is currently playing on your mind right now?"
    ["8"]="do you believe in aliens?"
    ["9"]="would you introduce me to one of your friends?"
    ["10"]="you reached this iteration, who makes you feel happy?"
)
greeting=$((1 + $RANDOM % 10))
echo "
\( ͡° ͜ʖ ͡°)/ --  hello
                 rhobin  ...

    ${intro[$greeting]}
"
########################################

alias v='vim'
alias ll="ls -al -h --color=auto"
alias dirsize="du -sh"
alias tdir="ll -t -r"
alias pro='vim ~/.bashrc'
alias repro='source ~/.bashrc'
alias tree="find . -print | sed -e 's;/*/;|;g;s;|; |;g' | grep -v git"
alias gitlog='git log --all --decorate --oneline --graph'
alias cdp='cd /home/rfaigones/projects'

odir() {
    dir=.
    if [ ! -z $1 ]; then dir=$1; fi
    xdg-open $dir &
}

mkdir2() {
    mkdir -p $1 && cd "$_"
}

unzip2() {
    file=${1##*/}
    file=$(echo ${file%.*})
    unzip $1 -d ./$file
}
