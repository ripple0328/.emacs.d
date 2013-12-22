#!/usr/bin/env bash

cd $HOME

\curl -sSL https://raw.github.com/ripple0328/mac-install-utils/master/install-utils.sh | bash

function exec-remote {
    curl -L https://raw.github.com/ripple0328/.emacs.d/master/bin/$1 | sh
}


# back up old configuration and clone new one
mv .emacs.d .emacs.d.bak
hub clone ripple0328/.emacs.d

exec-remote emacs-utils
exec-remote emacs-install-process

# install emacs dependencies
exec-remote install-dependencies
