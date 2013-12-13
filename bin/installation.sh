#!/usr/bin/env bash

# get permisson at beginning
sudo ls > /dev/null 2>&-

cd $HOME
curl -L https://raw.github.com/ripple0328/.emacs.d/master/bin/install-utils | sh

# add dependencies
install-brew
check-and-install-git
check-and-brew-install hub

# git all emacs configuration code
mv .emacs.d .emacs.d.bak
hub clone ripple0328/.emacs.d

# prepare environment and install emacs
clean-env
install-emacs
create-command-line-emacs
daemon-emacs

# install dependencies
curl -L https://raw.github.com/ripple0328/.emacs.d/master/bin/install-dependencies | sh

patch-shebang-path $(emacs-path) ruby
msg 'First time you launch emacs, all plugin will install automatically. enjoy!' 
emacs --debug-init

