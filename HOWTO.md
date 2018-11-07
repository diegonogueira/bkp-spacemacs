brew install the_silver_searcher
brew tap d12frosted/emacs-plus
brew install emacs-plus
brew linkapps emacs-plus

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
cd ~/.emacs.d/private/
git init
git remote add origin git@github.com:diegonogueira/spacemacs.git
git pull origin master
ln -sf ~/.emacs.d/private/spacemacs ~/.spacemacs
