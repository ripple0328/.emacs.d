#!/usr/bin/env bash

cd $HOME

source /dev/stdin  <<< "$(curl -s https://raw.github.com/ripple0328/mac-install-utils/master/install-utils.sh)"

function exec-remote {
  source /dev/stdin <<< "$(curl -sSL https://raw.github.com/ripple0328/.emacs.d/master/bin/$1)"
}


# back up old configuration and clone new one
if [ -f .emacs.d ]; then
    mv .emacs.d .emacs.d.bak
fi

if [ ! -f .emacs.d ]; then
    git clone https://github.com/ripple0328/.emacs.d.git
    cd .emacs.d
fi

exec-remote emacs-utils
exec-remote emacs-install-process

# install emacs dependencies
exec-remote install-dependencies
