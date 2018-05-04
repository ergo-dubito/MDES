## Git (Need Config)
ssh-keygen -t rsa -b 4096 -C "xxxx@xxx.com" -f ~/.ssh/id_rsa_github
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa_github
chmod 600 ~/.ssh/id_rsa_github

# Font
brew install cabextract
cd ~/Downloads
mkdir consolas
cd consolas
curl -O http://download.microsoft.com/download/f/5/a/f5a3df76-d856-4a61-a6bd-722f52a5be26/PowerPointViewer.exe
cabextract PowerPointViewer.exe
cabextract ppviewer.cab
open CONSOLA*.TTF

git clone git@github.com:tonsky/FiraCode.git
cd FiraCode/distr/otf
open FiraCode-*.otf

git clone git@github.com:nathco/Office-Code-Pro.git
cd Office-Code-Pro/Fonts/Office\ Code\ Pro/OTF/
open OfficeCodePro-*.otf

curl https://raw.githubusercontent.com/qrpike/Web-Font-Load/master/install.sh | sh

# Code New Roman
https://sourceforge.net/projects/codenewroman/

# Apple Font
https://developer.apple.com/fonts/

# ProgrammingFonts
https://github.com/ProgrammingFonts/ProgrammingFonts