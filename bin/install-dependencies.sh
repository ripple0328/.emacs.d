#!/bin/bash

msg 'installing some emacs package dependencies'

check_and_brew_install bash-completion

msg 'installing compile tools'
check_and_brew_install autoconf

msg 'installing build tools'
gem_install rake bundler

msg 'installing syntax check and doc tools'
gem_install rubocop
gem_install pry
gem_install pry-doc
gem_install method_source

function install_font {
    msg 'installing patched font for powline theme'
    check_and_brew_install wget
    wget -q 'https://github.com/Lokaltog/powerline-fonts/blob/master/Inconsolata/Inconsolata%20for%20Powerline.otf' -O Inconsolata\ for\ Powerline.otf
    mv Inconsolata\ for\ Powerline.otf /Library/Fonts/
}
install_font

# if you want to use other font. patch it by yourself use script below
# check_and_brew_install --use-gcc fontforge


msg 'installing silver searcher csv gpg and so on'

brew tap | grep epicbrews >/dev/null 2>&1 &&
msg 'epicbrews already been tapped' ||
brew tap epichub/homebrew-epicbrews 

check_and_brew_install the_silver_searcher
check_and_brew_install gpg
check_and_brew_install cvs
check_and_brew_install hg

msg 'installing javascript synatic checkor'
check_and_brew_install jslint

msg 'installing web brower in emacs'
check_and_brew_install w3m

msg 'installing  dictonary tools'
check_and_brew_install aspell

msg 'installing css syntax check'
check_and_brew_install nodejs
npm install -g csslint

msg 'installing ctags for symbol jumping'
check_and_brew_install ctags

msg 'install grapviz to convert ascii to digram and uml'
check_and_brew_install graphviz 
