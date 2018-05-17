# Swift
brew install kylef/formulae/swiftenv
echo 'export SWIFTENV_ROOT="$HOME/.swiftenv"' >> ~/.zshrc
echo 'export PATH="$SWIFTENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi' >> ~/.zshrc

# Node (Close Terminal)
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash
# need close window or source ~/.zshrc
nvm ls-remote
nvm install v6.11.0
echo 'alias ng="npm list -g --depth=0 2>/dev/null"' >> ~/.zshrc
echo 'alias nl="npm list --depth=0 2>/dev/null"' >> ~/.zshrc
nvm ls
# need close window or source ~/.zshrc
ng

# Python (Close Terminal)
brew install pyenv
brew install xz
brew install pyenv-virtualenv

# To use Homebrew's directories rather than ~/.pyenv add follow line to your profile:
# echo 'export PYENV_ROOT=/usr/local/var/pyenv' >> ~/.zshrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo -e '\nif command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
echo -e '\nif which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi' >> ~/.zshrc

pyenv install --list

CFLAGS="-I$(brew --prefix openssl)/include" \
LDFLAGS="-L$(brew --prefix openssl)/lib" \
pyenv install -v 3.6.5 --verbose

pyenv versions

# need close window or source ~/.zshrc

# Ruby (Close Terminal)
brew install gnupg
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash
# if failed using this 'curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -'
rvm get head
rvm list known
rvm install 2.5.1
rvm docs generate-ri
rvm --default use 2.5.1
rvm list
# need close window or source ~/.zshrc

# jenv
brew install jenv
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(jenv init -)"' >> ~/.zshrc

# Java

brew cask install java
brew cask install java8

jenv add /Library/Java/JavaVirtualMachines/jdk-10.0.1.jdk/Contents/Home
jenv add /Library/Java/JavaVirtualMachines/jdk1.8.0_172.jdk/Contents/Home

jenv global oracle64-1.8.0.172
# restart terminal
java -version

# dotnet core
# please visit https://www.microsoft.com/net/core#macos

# Rust (Close Terminal)
curl https://sh.rustup.rs -sSf | sh
echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.zshrc

# Rust with VSCode
rustup update nightly
rustup component add rls-preview --toolchain nightly
rustup component add rust-src --toolchain nightly
rustup component add rust-analysis --toolchain nightly

# Golang(close terminal)
zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
gvm install go1.4 -B
gvm use go1.4

gvm install go1.10 -B
gvm use go1.10 --default

go version
go env

brew install dep
brew uninstall --ignore-dependencies go