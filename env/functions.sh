function server-install
{
    fs=`ls $SERVER_ENV_DIR/install`
    for f in $fs
    do
        source $SERVER_ENV_DIR/install/$f
    done
}

function server-setup
{
    fs=`ls $SERVER_ENV_DIR/setup`
    for f in $fs
    do
        source $SERVER_ENV_DIR/setup/$f
    done
}
