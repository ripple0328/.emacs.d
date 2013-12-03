#!/bin/bash

pushd `dirname $0` > /dev/null

popd > /dev/null

source ./bin/install-utils.sh

install_brew
clean_env
install_emacs
create_command_line_emacs
daemon_emacs

source ./bin/install-dependencies.sh

msg 'First time you launch emacs, all plugin will install automatically. enjoy!'
emacs --debug-init

