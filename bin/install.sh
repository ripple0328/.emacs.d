#!/usr/bin/env bash

cd $HOME

source /dev/stdin  <<< curl -sSL https://raw.github.com/ripple0328/mac-install-utils/master/install-utils.sh

function exec-remote {
  source /dev/stdin <<< curl -L https://raw.github.com/ripple0328/.emacs.d/master/bin/$1
}


# back up old configuration and clone new one
mv .emacs.d .emacs.d.bak
hub clone ripple0328/.emacs.d

exec-remote emacs-utils
exec-remote emacs-install-process

# install emacs dependencies
exec-remote install-dependencies
