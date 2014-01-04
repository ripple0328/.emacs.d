#!/usr/bin/env bash

pushd `dirname $0` > /dev/null
popd > /dev/null


source /dev/stdin  <<< "$(curl -s https://raw.github.com/ripple0328/mac-install-utils/master/basic-environment-installation.sh)"

function exec-local {
    source ./$1
}

exec-local emacs-utils
exec-local emacs-install-process
exec-local install-dependencies

