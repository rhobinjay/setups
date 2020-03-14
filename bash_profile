alias v='vim'
alias ll="ls -al -h --color=auto"
alias dirsize="du -sh"
alias tdir="ll -t -r"
alias pro='vim ~/.bashrc'
alias repro='source ~/.bashrc'
alias s='/c/Program\ Files/Sublime\ Text\ 3/subl.exe'
alias tree="find . -print | sed -e 's;/*/;|;g;s;|; |;g' | grep -v git"
alias cdp='cd /c/Users/rfaigones/Projects'
alias gitlog='git log --all --decorate --oneline --graph'

# python
alias pyc='find . | grep -E "(__pycache__|\.pytest|\.pyc|\.pyo$)" | xargs rm -rf'
alias pyv='python3 -m venv'

unzip2() {
    file=${1##*/}
    file=$(echo ${file%.*})
    unzip $1 -d ./$file
}

mkdir2() {
    mkdir -p $1 && cd "$_"
}
