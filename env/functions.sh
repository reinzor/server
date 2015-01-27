function server-install
{
    sudo apt-get update
    fs=`ls $SERVER/env/install`
    for f in $fs
    do
        source $SERVER/env/install/$f
    done
}

function server-setup
{
    fs=`ls $SERVER/env/setup`
    for f in $fs
    do
        source $SERVER/env/setup/$f
    done
}

function server-run-script
{
    if [ -z "$1" ]
    then
        echo "Please specify a script"
    else
        $SERVER/scripts/$@
    fi
}

function server-run-script-in-screen
{
    if [ -z "$1" ]
    then
        echo "Please specify a script"
    else
        screen -dmS $1 sh -c "$SERVER/scripts/$@; exec bash"
    fi
}

_server-run-script () {
    # Set
    IFS=$'\n' tmp=( $(compgen -W "$(for f in $(ls $SERVER/scripts); do if [[ -x "$SERVER/scripts/$f" ]]; then echo $f; fi; done)" -- "${COMP_WORDS[$COMP_CWORD]}" ))
    COMPREPLY=( "${tmp[@]// /\ }" )
}
complete -o default -F _server-run-script server-run-script
complete -o default -F _server-run-script server-run-script-in-screen
