function msg {
 echo "###"$1
}

function checking_command_exists {
    command -v $1 >/dev/null 2>&1    
}

msg "installing brew if you do not"
checking_command_exists brew || ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"

msg "updating homebrew"
brew update

msg "installing emacs"
brew tap phinze/homebrew-cask
brew install brew-cask
brew cask alfred link
rm -rf /Applications/Emacs.app
brew cask install emacs

msg "daemon emacs to launch at login"
git clone https://github.com/ferlatte/emacs-daemon-osx.git
cd emacs-daemon-osx
make
cp org.gnu.emacs.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/org.gnu.emacs.plist
cp -r emacs-client.app /Applications/
rm -rf  emacs-daemon-osx

msg "installing some emacs package dependencies"
msg "installing rubocop pry method_source"
gem install rubocop pry pry-doc method_source

msg "installing rake to execute some rake task in emacs packages"
gem install rake
msg "installing fontpatcher for powlinbe"
brew install --use-gcc fontforge

msg "installing silver searcher ispell csv gpg and so on"
brew tap epichub/homebrew-epicbrews 
brew install the_silver_searcher ispell gpg cvs


msg "installing javascript synatic check jslint"
brew install jslint

msg "installing w3m a web brower in emacs"
brew install w3m

msg "installing aspell dictonary"
brew install aspell

msg "installing tidy needed by web-mode for real time syntax check"

msg "installing csslint a css syntax check"
brew install nodejs
npm install -g csslint

msg "installing ctags for symbol jumping"
brew install ctags

msg "install grapviz to convert ascii to digram and uml"
brew install graphviz 

msg "now start emacs to installation packages in emacs"
emacs
