# Docker (Need Config)
brew cask install docker # brew cask install docker-toolbox (toolbox vs docker)
docker --version
docker ps

# npm
npm i express-generator -g
npm i gulp-cli -g
npm i apidoc -g
npm i typescript -g
npm i eslint -g
npm i wepy-cli -g
npm i wept -g
npm i gtop -g
npm i nodemon -g
npm i json-server -g
npm i skpm -g

# gem
gem install bundler
gem install rubocop
gem install xcpretty
gem install xcode-install
gem install cocoapods
pod --version

# Cocoapods(gemset)
rvm gemset create pods-1.3.1
rvm gemset use pods-1.3.1
gem install cocoapods -v 1.3.1

rvm gemset list
pod --version

# rvm use ruby-2.4.1@pods-1.3.1 --default
# gem install cocoapods-playgrounds

# Carthage
brew update
brew install carthage
carthage help

# Scrapy
pyenv shell 3.6.2
pip install Scrapy
pip install --upgrade pip
scrapy --help

# Mysql
brew install mysql
brew services start mysql

# mysqlworkbench
brew cask install mysqlworkbench

# MangoDB
brew install mongodb
brew services start mongodb
sudo mkdir -p /data/db
sudo chown -R `id -u` /data/db

mongod
mongo

# robomongo
brew cask install robomongo

# Yarn
brew update
brew install yarn --without-node

# nginx
brew install nginx

# swift lint
brew install swiftlint

# oclint
brew install xctool
brew tap oclint/formulae
brew install oclint

# CMake
brew install cmake

# SonarScanner (Need Config)
brew install sonar-scanner

# Atom (Need Config)
brew cask install atom
# basic
apm install file-icons git-time-machine pigments project-manager emmet atom-beautify editorconfig
# theme
apm install nucleus-dark-ui Seti-ui seti-syntax monokai
# language
apm install language-swift language-rust language-vue
# markdown
apm install markdown-writer markdown-pdf markdown-preview-plus
# react|react-native
apm install nuclide react-native-snippets atom-react-native-style
# optional
apm install wakatime omnisharp autocomplete-modules atom-ternjs atom-css-comb sync-settings symbols-tree-view

# visual studio code (Need Config)
brew cask install visual-studio-code

code --list-extensions

code --install-extension EditorConfig.EditorConfig
code --install-extension spywhere.mark-jump
code --install-extension wayou.vscode-todo-highlight
code --install-extension deerawan.vscode-faker
code --install-extension esbenp.prettier-vscode
# themes&icons
code --install-extension Equinusocio.vsc-material-theme
code --install-extension ms-vscode.Theme-TomorrowKit
code --install-extension robertohuertasm.vscode-icons
code --install-extension PKief.material-icon-theme
code --install-extension azemoh.one-monokai
code --install-extension arcticicestudio.nord-visual-studio-code
code --install-extension robertohuertasm.vscode-icons
# html/css
code --install-extension ecmel.vscode-html-css
code --install-extension qinjia.view-in-browser
code --install-extension Zignd.html-css-class-completion
code --install-extension robinbentley.sass-indented
# language
code --install-extension dbaeumer.vscode-eslint
code --install-extension eg2.tslint
code --install-extension saviorisdead.RustyCode
# vue
code --install-extension octref.vetur
code --install-extension hollowtree.vue-snippets
# react&react-native(no recommend at 2017.11.08 - because react and react native likes atom nuclide.)
code --install-extension vsmobile.vscode-react-native
code --install-extension xabikos.reactsnippets
code --install-extension flowtype.flow-for-vscode
# optional
code --install-extension  ms-vscode.csharp

code --list-extensions

# Chrome WWDC Dropbox cheatsheet sourcetree transmit foxmail telegram slack insomnia sitesucker Hyper(Terminal) gitup
brew cask install google-chrome wwdc dropbox cheatsheet sourcetree telegram slack insomnia gitup hyper spark

# Intellij
brew cask install intellij-idea webstorm pycharm rubymine android-studio appcode #(android sdk)

# genymotion
brew cask install virtualbox genymotion

# gitbook
brew cask install gitbook-editor

# fastlane
brew cask install fastlane
echo 'export PATH="$HOME/.fastlane/bin:$PATH"' >> ~/.zshrc

# sketch for android tools
curl -s "https://get.sdkman.io" | bash
echo 'export PATH="$PATH:$HOME/.sdkman/bin/sdkman-init.sh"' >> ~/.zshrc
sdk install gradle

brew install pidcat

brew install imagemagick
npm install -g svgo svg2vectordrawable
