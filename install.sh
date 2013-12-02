function msg {
 echo '###----- '$1
}

function checking_command_exists {
    command -v $1 >/dev/null 2>&1    
}

function is_brew_installed {
    brew info $1  > /dev/null 2>&1
}

function check_and_brew_install {
    is_brew_installed $1 || brew install $1 && brew link $1
}
msg 'installing brew if you do not'
checking_command_exists brew || ruby -e '$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)'

msg 'updating homebrew'
brew update

msg 'clean up environment'
msg 'remove system shipped emacs'

function cleanup_command {
    which $1 | xargs sudo rm -rf
}
cleanup_command emacs
cleanup_command emacsclient
cleanup_command e

msg 'installing emacs'
brew tap phinze/homebrew-cask
check_and_brew_install brew-cask
brew cask alfred link
rm -rf /Applications/Emacs.app ~/Applications/Emacs.app
brew cask install emacs
msg 'linking emacs to system path'

msg 'creating emacs command'
rm -f /usr/local/bin/emacs
cp emacs-script /usr/local/bin/emacs
chmod a+x /usr/local/bin/emacs

msg 'linking commands shipped with emacs to system path'
ln -sf /opt/homebrew-cask/Caskroom/emacs/24.3/Emacs.app/Contents/MacOS/bin/* /usr/local/bin/

msg 'daemon emacs to launch at login'
git clone https://github.com/ripple0328/emacs-daemon-osx.git
cd emacs-daemon-osx
make
cp org.gnu.emacs.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/org.gnu.emacs.plist
mv  emacs-client.app /Applications/
mv e /usr/local/bin/
cd ..
rm -rf emacs-daemon-osx

msg 'installing some emacs package dependencies'

msg 'installing bash-completion'
check_and_brew_install bash-completion
msg 'installing compile tools'
check_and_brew_install autoconf

msg 'installing rake to execute some rake task in emacs packages'
gem install rake bundler

msg 'installing rubocop pry method_source'
gem install rubocop pry pry-doc method_source

msg 'installing font for powline theme'
check_and_brew_install wget
wget 'https://github.com/Lokaltog/powerline-fonts/blob/master/Inconsolata/Inconsolata%20for%20Powerline.otf' -O Inconsolata\ for\ Powerline.otf
mv Inconsolata\ for\ Powerline.otf /Library/Fonts/

# if you want to use other font. patch it by yourself use script below
# check_and_brew_install --use-gcc fontforge

msg 'installing silver searcher csv gpg and so on'
brew tap epichub/homebrew-epicbrews 
check_and_brew_install the_silver_searcher gpg cvs hg
brew link cvs --force
brew link hg --force

msg 'installing javascript synatic check jslint'
check_and_brew_install jslint

msg 'installing w3m a web brower in emacs'
check_and_brew_install w3m

msg 'installing aspell dictonary'
check_and_brew_install aspell

msg 'installing tidy needed by web-mode for real time syntax check'

msg 'installing csslint a css syntax check'
check_and_brew_install nodejs
npm install -g csslint

msg 'installing ctags for symbol jumping'
check_and_brew_install ctags

msg 'install grapviz to convert ascii to digram and uml'
check_and_brew_install graphviz 

msg 'First time you launch emacs, all plugin will install automatically. enjoy!'
emacs --debug-init
