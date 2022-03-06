odir() {
    dir=.
    if [ ! -z $1 ]; then dir=$1; fi
    xdg-open $dir &
}
