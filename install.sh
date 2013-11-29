function msg {
 echo "###"$1
}

msg "updating homebrew"
brew update

msg "installing emacs"
brew install emacs --HEAD --use-git-head --cocoa --srgb

msg "linking installed emacs to /Application"
ln -s /usr/local/Cellar/emacs/HEAD/Emacs.app /Applications
ln -s /usr/local/Cellar/emacs/HEAD/bin/ /Application/Emacs.app/Contents/MacOS/bin/

msg "installing some emacs package dependencies"
msg "installing rubocop pry method_source"
gem install rubocop pry pry-doc method_source

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
npm install -g csslint

msg "installing ctags for symbol jumping"
brew install ctags

msg "install grapviz to convert ascii to digram and uml"
brew install graphviz 

