#############################################################
# Rhobin alias definitions
#############################################################
alias proa='vim ~/.bash_aliases'
alias reproa='source ~/.bash_aliases'

alias v='vim'
alias vdiff='vimdiff'
alias ll="ls -alhG"
alias dirsize="du -sh"
alias tdir="ll -t -r"
alias gitlog='git log --all --decorate --oneline --graph'
alias gs='git status'
#alias tree="find . -print | sed -e 's;/*/;|;g;s;|; |;g' | grep -v git"

pro() {
    if   [ -f ~/.bashrc ]; then vim ~/.bashrc;
    elif [ -f ~/.bash_profile ]; then vim ~/.bash_profile;
    else echo "Profile not found. Please check and setup this alias manually.";
    fi

}

repro() {
    if   [ -f ~/.bashrc ]; then source ~/.bashrc;
    elif [ -f ~/.bash_profile ]; then source ~/.bash_profile;
    else echo "Profile not found. Please check and setup this alias manually.";
    fi
}

mkdir2() {
    mkdir -p $1 && cd "$_"
}

unzip2() {
    file=${1##*/}
    file=$(echo ${file%.*})
    unzip $1 -d ./$file
}

pyvenv() {
    env_name=venv
    if [ ! -z $1 ]; then env_name=$1; fi
    python3 -m venv $env_name
    source $env_name/bin/activate
}

pyc () {
    find . -type d -name '*pycache*' -exec rm -rf {} \;
    find . -type f -name '*pycache*' -exec rm -f {} \;
}

docker_restart () {
    sudo systemctl daemon-reload
    sudo systemctl restart docker
}

pwd2 () {
    cur_dir=$(pwd)
    echo $cur_dir/$1
}

#############################################################
#############################################################
