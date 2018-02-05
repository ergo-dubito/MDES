# oh-my-zsh plugins (need config zshrc and antigenrc)
mkdir .bin
curl -L git.io/antigen > $HOME/.bin/antigen.zsh

# Autojump
brew install autojump
echo '[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh' >> ~/.zshrc

# tree
brew install tree

# asciinema
pyenv shell 3.6.3
pip3 install asciinema

# you-get - youtube-dl
pyenv shell 3.6.3
pip3 install --upgrade you-get
pip3 install --upgrade youtube-dl
brew install ffmpeg

# baidu pcs
j github
git clone https://github.com/GangZhuo/BaiduPCS.git
cd BaiduPCS
export CPPFLAGS=-I/usr/local/opt/openssl/include/
export LDFLAGS=-L/usr/local/opt/openssl/lib/
./configure  --with-openssl=/usr/local/opt/openssl
make clean
make
 #将安装到/usr/local/bin下
make install

# tmux (Need Config)
# copy your sync tmux config file
brew install tmux
brew install reattach-to-user-namespace
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux
tmux source ~/.tmux.conf
# Press`prefix + I` install plugins
gem install tmuxinator
git clone git@github.com:tmuxinator/tmuxinator.git
# copy completeion folder's tmuxinator.zsh to ~/.bin
# copy the .tmuxinator config
