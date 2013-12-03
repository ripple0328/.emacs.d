#!/bin/bash

function msg {
 echo '0000===---> '$1
}

function checking_command_exists {
    msg 'checking whether command '$1' exist'
    command -v $1 >/dev/null 2>&1    
}

function check_and_brew_install {
    msg 'checking whether '$1' has been installed'
    brew info $1  > /dev/null 2>&1 &&
    msg $1' already been installed' ||
    ( msg $1' not installed'
    msg 'brew installing '$1
    brew install $1
    msg 'linking '$1' to system path'
    brew link $1 --force)
}

function gem_install {
    msg 'checking whether gem '$1' is installed'
    gem which $1  > /dev/null 2>&1 && 
    msg 'gem '$1' already been installed' ||
    ( msg 'not been installed'
    msg 'now installing gem '$1' for you'
    gem install $1)
}

function cleanup_command {
    msg 'looking for command '$1
    which $1 | xargs sudo rm -rf
}

function install_brew {
    msg 'installing brew if you do not'
    checking_command_exists brew &&
    msg 'brew has been installed' ||
    ruby -e '$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)'
    msg 'updating homebrew'
    brew update
}

function clean_env {
    msg 'clean up environment'
    msg 'remove system shipped emacs'
    cleanup_command emacs
    cleanup_command emacsclient
    cleanup_command e
}


function install_emacs {
    msg 'installing emacs'
    brew tap | grep phinze  >/dev/null 2>&1 &&
    msg 'phinze already been tapped' ||
    brew tap phinze/homebrew-cask
    
    check_and_brew_install brew-cask

    brew cask list | grep emacs  >/dev/null 2>&1 &&
    msg 'emacs already been brew cask installed' ||
    (msg "emacs not install by cask"
    brew cask alfred link
    rm -rf /Applications/Emacs.app ~/Applications/Emacs.app
    brew cask install emacs)
    msg 'linking emacs to system path'
}

function create_command_line_emacs {
    msg 'creating emacs command'
    rm -f /usr/bin/emacs
    rm -f /usr/local/bin/emacs
    cp emacs-script /usr/local/bin/emacs
    chmod a+x /usr/local/bin/emacs

    msg 'linking commands shipped with emacs to system path'
    ln -sf /opt/homebrew-cask/Caskroom/emacs/24.3/Emacs.app/Contents/MacOS/bin/* /usr/local/bin/
}

function daemon_emacs {
    msg 'daemon emacs to launch at login'
    git clone https://github.com/ripple0328/emacs-daemon-osx.git
    cd emacs-daemon-osx
    make
    cp org.gnu.emacs.plist ~/Library/LaunchAgents
    launchctl load ~/Library/LaunchAgents/org.gnu.emacs.plist
    rm -rf /Applications/emacs-client.app
    mv  emacs-client.app /Applications/
    mv e /usr/local/bin/
    chmod a+x /usr/local/bin/e
    cd ..
    rm -rf emacs-daemon-osx
}
