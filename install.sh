function msg {
 echo "###"$1
}

msg "updating homebrew"
brew update

msg "installing emacs"
brew install emacs --HEAD --use-git-head --cocoa --srgb

msg "linking installed emacs to /Application"
ln -s /usr/local/Cellar/emacs/HEAD/Emacs.app /Applications

msg "installing some emacs package dependencies"
msg "installing rubocop pry method_source"
gem install rubocop pry pry-doc method_source

msg "installing fontpatcher for powlinbe"
brew install --use-gcc fontforge

msg "installing silver searcher ispell csv gpg and so on"
brew tap epichub/homebrew-epicbrews 
brew install the_silver_searcher ispell gpg cvs


msg "install javascript synatic check jslint"
brew install jslint
