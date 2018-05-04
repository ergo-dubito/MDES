# Install Xcode, command line Tools final enbale develop mode
xcode-select --install

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update

# Cask
brew tap caskroom/cask
brew tap caskroom/versions
brew update

# mas
brew install mas
mas list

# Sierra Gatekeeper
sudo spctl --master-disable

# Disable SIP （reboot + CMD + R）
csrutil disable
reboot

# Openssl
brew install openssl
sudo mv /usr/bin/openssl /usr/bin/openssl_old
sudo ln -s /usr/local/Cellar/openssl/1.0.2o/bin/openssl /usr/bin/openssl
ln -s /usr/local/opt/openssl/lib/libcrypto.1.0.0.dylib /usr/local/lib/
ln -s /usr/local/opt/openssl/lib/libssl.1.0.0.dylib /usr/local/lib/
openssl version -a
