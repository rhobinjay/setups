alias python='python3'
alias v='vim'
alias ll="ls -alhG"
alias dirsize="du -sh"
alias tdir="ll -t -r"
alias pro='vim ~/.bash_profile'
alias repro='source ~/.bash_profile'
#alias tree="find . -print | sed -e 's;/*/;|;g;s;|; |;g' | grep -v git"
alias gitlog='git log --all --decorate --oneline --graph'
alias gs='git status'
alias cdp='cd /home/rfaigones/projects'

# sudo vim /etc/docker/daemon.json
alias dockerloginprod='sudo docker login https://artifactory.dyson.global.corp --username rfaigones'
#alias docker='sudo docker'
alias svim='sudo vim'

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

reconn() {
    sudo networksetup -setnetworkserviceenabled Wi-Fi off && sleep 15 && sudo networksetup -setnetworkserviceenabled Wi-Fi on
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

distc () {
    sudo rm -rf build/ dist/ *.egg-info
}

