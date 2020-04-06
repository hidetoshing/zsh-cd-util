
alias up="cd ..; ls -l"
alias ..='cd ..'

jj () {
    if [ $1 ]; then
        JUMPDIR=$(find . -type d -maxdepth 1 | grep $1 | tail -1)
        if [[ -d $JUMPDIR && -n $JUMPDIR ]]; then
            cd $JUMPDIR
        else
            echo "directory not found"
        fi
    fi
}

mark() { eval $1=$(pwd); }
goto() { eval dir=\$$1; cd "$dir"; }

