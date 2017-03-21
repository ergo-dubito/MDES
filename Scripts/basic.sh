#Command line tools
xcode-select --install

## Git
ssh-keygen -t rsa -b 4096 -C "xxxx@xxx.com" -f ~/.ssh/id_rsa_github
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa_github

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# oh-my-zsh plugins
brew install antigen
echo "source $(brew --prefix)/share/antigen/antigen.zsh" >> ~/.zshrc

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew tap caskroom/cask
brew update

# Font Consolas
brew install cabextract
cd ~/Downloads
mkdir consolas
cd consolas
curl -O http://download.microsoft.com/download/f/5/a/f5a3df76-d856-4a61-a6bd-722f52a5be26/PowerPointViewer.exe
cabextract PowerPointViewer.exe
cabextract ppviewer.cab
open CONSOLA*.TTF

# Font Fira Code
git clone git@github.com:tonsky/FiraCode.git
cd FiraCode/distr/otf
open FiraCode-*.otf

# Sierra Gatekeeper
sudo spctl --master-disable

# Google Font
curl https://raw.githubusercontent.com/qrpike/Web-Font-Load/master/install.sh | sh
