SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

## Symlinks $1 in configs dir as $2 in dir $3
symlink-config() {
    local CONF=$1
    local SYMLINK=$2
    local DEST_DIR=$3

    if [[ ! -d $DEST_DIR ]]; then mkdir -p $DEST_DIR; fi
    cd $DEST_DIR

    if [[ ! -f $SYMLINK ]]; then
        if [[ -L $SYMLINK ]]; then rm -f $SYMLINK; fi
        ln -s $SCRIPT_DIR/configs/$CONF $SYMLINK
        echo "Created symlink '${DEST_DIR}/${SYMLINK}'"
    fi
}

## Symlink config files
symlink-config bashrc.user .bashrc.user $HOME
symlink-config gitconfig   .gitconfig   $HOME
symlink-config tmux.conf   .tmux.conf   $HOME
symlink-config kitty.conf  kitty.conf   $HOME/.config/kitty

## Append sourcing of .bashrc.user in .bashrc
if [[ -f $HOME/.bashrc && ! $(grep -E '(\.|source)\s.*/\.bashrc\.user' $HOME/.bashrc) ]]; then
    cat << EOF >> $HOME/.bashrc

if [ -f ~/.bashrc.user ]; then
    . ~/.bashrc.user
fi
EOF

    echo "Appended sourcing of ~/.bashrc.user to end of ~/.bashrc"
fi
