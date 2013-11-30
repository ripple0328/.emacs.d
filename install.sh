function msg {
 echo '###'$1
}

function checking_command_exists {
    command -v $1 >/dev/null 2>&1    
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
brew install brew-cask
brew cask alfred link
rm -rf /Applications/Emacs.app
brew cask install emacs
msg 'linking emacs to system path'

msg 'creating emacs command'
touch /usr/local/bin/emacs
echo '#!/bin/bash' >> /usr/local/bin/emacs
echo '/opt/homebrew-cask/Caskroom/emacs/24.3/Emacs.app/Contents/MacOS/Emacs -nw "$@"' >> /usr/local/bin/emacs
chmod a+x /usr/local/bin/emacs

msg 'linking commands shipped with emacs to system path'
ln -sf /opt/homebrew-cask/Caskroom/emacs/24.3/Emacs.app/Contents/MacOS/bin/* /usr/local/bin/

msg 'creating emacsclient command'
touch /usr/local/bin/e
echo '#!/bin/bash' >> /usr/local/bin/e
echo 'emacsclient -t "$@"' >> /usr/local/bin/e
chmod a+x /usr/local/bin/e

msg 'daemon emacs to launch at login'
git clone https://github.com/ferlatte/emacs-daemon-osx.git
cd emacs-daemon-osx
make
cp org.gnu.emacs.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/org.gnu.emacs.plist
cp -r emacs-client.app /Applications/
cd ..
rm -rf emacs-daemon-osx


msg 'installing some emacs package dependencies'

msg 'installing compile tools'
brew install autoconf
brew link autoconf

msg 'installing rake to execute some rake task in emacs packages'
gem install rake

msg 'installing rubocop pry method_source'
gem install rubocop pry pry-doc method_source

msg 'installing fontpatcher for powlinbe'
brew install --use-gcc fontforge

msg 'installing silver searcher ispell csv gpg and so on'
brew tap epichub/homebrew-epicbrews 
brew install the_silver_searcher ispell gpg cvs hg
brew link cvs --force
brew link hg --force

msg 'installing javascript synatic check jslint'
brew install jslint

msg 'installing w3m a web brower in emacs'
brew install w3m

msg 'installing aspell dictonary'
brew install aspell

msg 'installing tidy needed by web-mode for real time syntax check'

msg 'installing csslint a css syntax check'
brew install nodejs
npm install -g csslint

msg 'installing ctags for symbol jumping'
brew install ctags

msg 'install grapviz to convert ascii to digram and uml'
brew install graphviz 

msg 'now start emacs to installation packages in emacs'
emacs
