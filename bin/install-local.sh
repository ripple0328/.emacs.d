#!/usr/bin/env bash

pushd `dirname $0` > /dev/null
popd > /dev/null


\curl -sSL https://raw.github.com/ripple0328/mac-install-utils/master/install-utils.sh | bash

function exec-local {
    source ./$1
}

exec-local emacs-utils
exec-local emacs-install-process
exec-local install-dependencies

