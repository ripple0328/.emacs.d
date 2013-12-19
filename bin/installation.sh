#!/usr/bin/env bash

cd $HOME

function exec-remote {
    curl -L https://raw.github.com/ripple0328/.emacs.d/master/bin/$1 | sh
}

exec-remote install-utils
exec-remote basic-environment-installation

# back up old configuration and clone new one
mv .emacs.d .emacs.d.bak
hub clone ripple0328/.emacs.d

exec-remote emacs-utils
exec-remote emacs-install-process

# install emacs dependencies
exec-remote install-dependencies
