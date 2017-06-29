# MDES - Mac Development Environment Setup

每当开发环境出现无法修复的场景时，大部分开发者都会对重做操作系统望而生畏，无非是因为很多开发配置参数和IDE配置需要重新安装和设置，浪费青春和生命.

MDES 就是为了解决上述问题而诞生，下面记录了 mac 上常用的开发环境的搭建过程，注意这里是按照 **安装先后顺序** 进行编写的.

## Table of Contents

- [Lantern](#lantern)
- [GreenVPN](#greenvpn)
- [Xcode](#xcode)
  + [Xcode Plugin Manager](#xcode-plugin-manager)
- [Terminal](#terminal)
- [Homebrew](#homebrew)
  + [AutoJump](#autojump)
  + [tree](#tree)
  + [asciinema](#asciinema)
- [Pyenv](#pyenv)
  + [Scrapy](#scrapy)
- [Shadowsocks](#shadowsocks)
  + [GFWList](#gfwlist)
  + [Shadowsocks + Terminal](#shadowsocks--terminal)
- [you-get](#you-get)
- [youtube-dl](#youtube-dl)
- [Consolas Font](#consolas-font)
- [tmux](#tmux)
  + [plugin](#plugin)
  + [config](#config)
- [Node](#node)
  + [Express](#express)
  + [Gulp](#gulp)
  + [Recipes](#recipes)
  + [Tips](#tips)
- [Atom](#atom)
  + [plugins](#plugins)
  + [themes](#themes)
- [Cocoapods](#cocoapods)
  + [如何更好地使用 CocoaPods](如何更好地使用-cocoapods)
- [Carthage](#carthage)
- [Git](#git)
  + [Git SSH Key](#git-ssh-key)
  + [Gitignore](#gitignore)
  + [GitProxy](#gitproxy)
- [BaiduPCS](#baidupcs)
- [JAVA](#java)
- [Android SDK](#android-sdk)
- [IDE](#ide)
- [Genymotion](#genymotion)
- [VersionControl](#versioncontrol)
- [Swift](#swift)
- [ReactNative](#reactnative)
- [Docker](#docker)
- [Design](#design)
- [SQL](#sql)
  + [Database](#database)
  + [Client](#client)
- [FTP](#ftp)
- [System](#system)
- [Other](#other)
- [TODO](#todo)

## Lantern
作为一个开发者，尤其是他妈的中国开发者（对不起这里爆粗口了），如果不能够访问谷歌等同于缺少了一个解决问题的利器，所以要做的第一步就是要搞科学上网，安装配置最简单的工具就是 [lantern](https://github.com/getlantern/lantern).

## GreenVPN  
[GreenVPN](https://www.green-jsq.org) 上大学的时候就在用了，算是一种留恋吧，不过平常用的很少了.

## Xcode  

在 OSX 系统上，安装其他开发工具之前先安装 Xcode 是一个良好的习惯，即便你不是一个 iOS/OSX 开发者，因为在安装了 Xcode 之后，像 git 以及一些 c/c++/clang 的编译工具也默认安装了，具体的安装方法有两种：一是通过 AppStore 进行安装，二是通过 [Apple Developer](developer.apple.com)下载 dmg 文件进行安装，除此之外其他安装方式都不能保证绝对安全.

作为一个 iOS 开发者，当安装完 Xcode 之后，我觉得首先你要做的是新建一个工程并且在模拟器上运行一下，以保证开发环境都准确无误的安装好了（好吧，我承认我有强迫症），不过运行下模拟器可以帮助你开启 mac 的开发者模式.

安装好 Xcode 之后，你可以运行如下命令：```xcode-select --install```来安装 **Command Line Tools**.

### Xcode Plugin Manager

如果需要对 Xcode 安装各种个性化的插件，[Alcatraz](http://alcatraz.io/) 将会是不二之选，安装脚本如下：

```
curl -fsSL https://raw.githubusercontent.com/supermarin/Alcatraz/deploy/Scripts/install.sh | sh
```

安装好之后，这里列出一些比较常用的插件：

**Plugin**

- Backlight
- Clangformat
- VVDocument
- XAlign
- JSPatchX - 编写JSPatch脚本所用
- SketchExporter
- xcode-wakatime - 有效的统计code-time

**Theme**

- Amoyly
- Aqueducts 3.0 (Night)
- WWDC 2016

**Template**

- Xcode Empty Application

## Terminal

一个程序员最好的开发工具应该是 Terminal，这里强烈推荐 [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) ，oh-my-zsh 支持的插件非常强大，当然圈里也有一些人用 [fish-shell](https://github.com/fish-shell/fish-shell)  也不错.

oh-my-zsh 安装脚本如下：

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

安装完成后最好配置下编码环境，在 `~/.zshrc` 文件下配置：

```
export LANG=en_US.UTF-8
```

## Homebrew

Homebrew 就不用多介绍了， OSX 上必备的程序包安装工具，安装脚本如下：

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### AutoJump

[autojump](https://github.com/wting/autojump) -  a faster way to navigate your filesystem，安装脚本如下:

```
brew install autojump
echo '[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh' >> ~/.zshrc
```

### tree

如果想让自己的文件夹结构能树形展示，可以用 `tree` 这个插件，安装脚本如下：
```
brew update
brew install tree
```

### asciinema

[asciinema](https://asciinema.org) 终端录制工具，安装方法如下：

```
brew update && brew install asciinema
```

启动：

```
asciinema rec
```

## Pyenv

碰到脚本语言，就势必出现大家在开发的时候选择不同版本进行开发，这个时候就出现了各种 Version Manager，像 Python 这种一直维持两个版本的语言来说，更需要用这种工具来随时切换各种 Python 脚本，所以就需要[pyenv](https://github.com/yyuu/pyenv)来管理.

安装方法如下：

```
brew install pyenv
echo 'export PYENV_ROOT=/usr/local/var/pyenv' >> ~/.zshrc
echo 'if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi' >> ~/.zshrc

```

另外需要单独加一条命令到 `zshrc`，[解决 `brew doctor config` 的问题](http://www.dreamxu.com/build-a-basic-python-development-environment/)

```
alias brew='"env" PATH=${PATH//$(pyenv root)\/shims:/} brew'
```

### Scrapy

[Scrapy](https://scrapy.org) 是采用 `Python` 语言编写的爬虫框架，可扩展性非常好。

```
sudo pip install Scrapy
```
安装完之后，会提示如下错误：

```
ImportError:cannot import name xmlrpc_client
```

解决方法如下：

```
sudo rm -rf /Library/Python/2.7/site-packages/six*
sudo rm -rf /System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python/six*
sudo pip install six
```

最后运行 `scrapy version`，如果能正常打印出版本信息就说明没有问题了。


## Shadowsocks

[Shadowsocks](https://github.com/shadowsocks/shadowsocks) 也是非常好的科学上网软件，其中有一家比较好的服务商也叫 [Shadowsocks](https://shadowsocks.com/)

为什么要在这里才介绍这个软件不跟上面的 Lantern、GreenVPN 一起介绍? 这里是因为 Shadowsocks 更像是一个可以编程的玩具，可以随便配置，需要安装辅助脚本来支持它运行，所以上面的脚本安装的差不多了，我们到这里才能够介绍 Shadowsocks.

[搬瓦工自己搭建 Shadowsocks 服务器](http://blog.csdn.net/wwj_748/article/details/50636127)

安装完 Shadowsocks 后配置上面设置的服务器配置(也可生成二维码后扫描)，如下：

```
ip : xxx.xxx.xxx.xxx
port: xxx
password: xxxx
备注：xxxx
```

### GFWList

GFWList - gfwList是由AutoProxy官方维护，由众多网民收集整理的一个中国大陆防火长城的屏蔽列表。此列表非中国官方列表，故可能有遗漏、错误部分，由于GoogleCode与2016年1月25日关闭，因此该项目已转移至Github源代码托管平台

PAC(Proxy Auto Config) - 规定一个指向PAC文件的URL，这个文件中包括一个JavaScript函数来确定访问每个URL时所选用的合适代理

Shadowsocks 里面集成了自动从 GoogleCode 下载GFWList并且转换成 PAC 文件，最终做到根据 URL 地址自动判断是否需要翻墙，**但是** 由于 GoogleCode 已经被放弃，所以 Shadowsocks 自带的 `从GFWList更新PAC` 工具已经不生效了，所以安装如下Python脚本：


```
sudo easy_install pip
pip --version
sudo pip install gfwlist2pac
```

下载 [update_gfwlist.sh](https://gist.github.com/VincentSit/b5b112d273513f153caf23a9da112b3a)

运行如下脚本，更新GFWList:

```
cd your script folder
chmod +x update_gfwlist.sh
./update_gfwlist.sh
```

如果运行脚本后提示 `.ShadowsocksX` 文件夹找到不，可以自行在用户根目录下穿件下该文件夹。

如果觉得每次都要手动执行该脚本太麻烦可以用 `cron` 来做一个定时任务执行 pac 的更新任务，示例如下:

```
0 12 * * * sh your_folder_path/update_gfwlist.sh
```

### Shadowsocks + Terminal

```
brew install proxychains-ng
cd
mkdir .proxychains
cd .proxychains
touch proxychains.conf
```

在 `proxychains.conf` 中输入以下配置文件：

```
strict_chain
proxy_dns
remote_dns_subnet 224
tcp_read_time_out 15000
tcp_connect_time_out 8000
localnet 127.0.0.0/255.0.0.0
quiet_mode

[ProxyList]
socks5  127.0.0.1 1080
```

运行如下命令测试：
```
proxychains4 curl https://www.twitter.com/
```

> 注意： 如果运行失败，请搜索 proxychains-ng not working on on OS X 10.11 due to SIP，结果一般为 Run ```csrutil disable``` in Recovery mode

## you-get

You-Get is a tiny command-line utility to download media contents (videos, audios, images) from the Web, in case there is no other handy way to do it.

You-Get 是在 Python 3 以上的版本才能运行，这时 Pyenv 就派上用处了，我们可以安装并切换到 Python 3 的环境下，安装好后可以结合 proxychains-ng 在 命令行下载各种 youtube 视频

```
pyenv install 3.4.0
pyenv shell 3.4.0
pip install you-get
```

## youtube-dl

跟上面的 you-get 是一类工具，两者结合起来可以下载几乎国内外所有视频网站的视频

```
brew install youtube-dl
```

## Consolas Font

在 mac 上如何使用 Visual Studio 中的 Consolas 字体，下面的命令就给你相应的字体安装方法：

```
brew install cabextract
cd ~/Downloads
mkdir consolas
cd consolas
curl -O http://download.microsoft.com/download/f/5/a/f5a3df76-d856-4a61-a6bd-722f52a5be26/PowerPointViewer.exe
cabextract PowerPointViewer.exe
cabextract ppviewer.cab
open CONSOLA*.TTF
```

安装好字体，现在你可以尝试改变以下 IDE 的字体：

- Xcode
- Terminal

## tmux
tmux 是一个终端多开工具，可以在一个 `Terminal` 窗口内同时运行多个会话，并且可以高度自定义，支持插件，安装方法如下：

```
brew install tmux
```

在说怎么牛叉的配置 `tmux` 和 安装 `tmux-plugin` 之前，要先理解 `tmux` 的基本结构：

```
tmux
├── 会话a
│   ├── 窗口a
│   │   ├── 窗格a
│   │   └── 窗格b
│   └── 窗口b
│       └── 窗格c
└── 会话b
    ├── 窗口c
    │   └── 窗格d
    └── 窗口d
        └── 窗格e
```

### plugin

[tmux-plugins](https://github.com/tmux-plugins) 是一个专门为 `tmux` 编写插件系统的组织，[tmp](https://github.com/tmux-plugins/tpm) 是主要的插件管理工具，安装方法如下：

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

然后在 `~/.tmux.conf` 进行如下配置：

```
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'git@github.com/user/plugin'
# set -g @plugin 'git@bitbucket.com/user/plugin'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf | 最后一行一定不要改变)
run '~/.tmux/plugins/tpm/tpm'
```

### config

有了上面的插件之后，你同样可以自定义一些 `tmux` 的样式和操作甚至是快捷键，下面列出我总结的配置，里面包含了一些参考链接。

```
### INSTALLATION NOTES ###
# 1. Install by MDES (https://github.com/coderafi/mdes)
# 2. brew install reattach-to-user-namespace
#
# Usage:
# - Prefix is set to Ctrl-a (make sure you remapped Caps Lock to Ctrl)
# - All prefixed with Ctrl-a
#   - Last used window: /
#   - Last used pane:   ;
#   - Vertical split:   v
#   - Horizontal split: s
#   - Previous window:  [
#   - Next window:      ]
#   - Choose session:   Ctrl-s
#   - Quick window:     Ctrl-q
# Urls:
# - https://mba811.gitbooks.io/mac-dev/content/iTerm/tmux.html
# - https://gist.github.com/v-yarotsky/2157908
# - http://mingxinglai.com/cn/2012/09/tmux/
# - http://harttle.com/2015/11/06/tmux-startup.html
# - http://zanshin.net/2013/09/05/my-tmux-configuration/
# - http://wing2south.com/post/40670260768/tmux/
# - https://linuxtoy.org/archives/tmux-resurrect-and-continuum.html

set-option -g default-command "reattach-to-user-namespace -l zsh"

### LOOK & FEEL ###
set -g default-terminal "xterm-256color"

# default statusbar colors
set-option -g status-bg colour235
set-option -g status-fg colour179
set-option -g status-attr default

# default window title colors
set-window-option -g window-status-fg colour244
set-window-option -g window-status-bg default

# active window title colors
set-window-option -g window-status-current-fg colour166
set-window-option -g window-status-current-bg default
set-window-option -g window-status-current-attr bright

# pane border
set-option -g pane-border-fg colour235
set-option -g pane-active-border-fg colour240

# pane number display
set-option -g display-panes-active-colour colour33
set-option -g display-panes-colour colour166

# clock
set-window-option -g clock-mode-colour colour64

# status bar right contents
set -g status-right-length 65
set -g status-right "#[fg=colour187][#(itunesartist) - #(itunestrack)] #[fg=default][%H:%M %e-%b-%Y]"
set -g status-interval 5

set -g mouse on
bind -n WheelUpPane   select-pane -t= \; copy-mode -e \; send-keys -M
bind -n WheelDownPane select-pane -t= \;                 send-keys -M

set-option -g status-keys vi
set-option -g mode-keys vi

#no command delay
set -sg escape-time 0

#count windows and panes from 1
set -g base-index 1
setw -g pane-base-index 1

### KEYS ###

#using C-a as prefix
unbind C-b
set-option -g prefix C-a
bind C-a send-prefix

unbind /
bind / last-window

unbind %
bind s split-window -v -c '#{pane_current_path}'
unbind '"'
bind v split-window -h -c '#{pane_current_path}'

bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

bind L resize-pane -L 10  # 向左扩展
bind R resize-pane -R 10  # 向右扩展
bind K resize-pane -U 5   # 向上扩展
bind J resize-pane -D 5   # 向下扩展

unbind {
bind { swap-pane -D
unbind }
bind } swap-pane -U

unbind r
bind r source-file ~/.tmux.conf \; display "Reloaded!"

bind Escape copy-mode
bind p paste-buffer
bind -t vi-copy 'v' begin-selection
bind -t vi-copy 'y' copy-selection
bind C-c run "tmux save-buffer - | reattach-to-user-namespace pbcopy"
bind C-v run "reattach-to-user-namespace pbpaste | tmux load-buffer - && tmux paste-buffer"

unbind [
bind [ previous-window
unbind ]
bind ] next-window

unbind o
bind o select-pane -t :.-

bind C-q command-prompt -I "htop" -p "Quick window command: " "new-window '%%'"

bind C-s choose-session

# kill pane (prefix q)
bind q killp
# kill window (prefix Ctrl+q)
bind ^q killw

# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'tmux-plugins/tmux-yank'
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-continuum'

set -g @continuum-boot 'on'
set -g @continuum-restore 'on'
# set -g @continuum-boot-options 'fullscreen'
set -g @continuum-save-interval '60'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
```

> 注意：
  - 在使用 `tmux-resurrect` 插件来恢复配置环境时，如果有多个 `window` 而且都进行了重命名，这时候第一个 `window` 的名称是无法恢复的，这应该是官方的一个 [`issue`](https://github.com/tmux-plugins/tmux-resurrect/issues/95) 截止到 `2016-09-13` 还没有修复，如果有修复会随时更新。

## Node

就像上面的 Pyenv ，所有的脚本语言都需要一个 Version Manager， JavaScript 也不例外，这里推荐 NVM，当然也可以用 n， [NVM](https://github.com/creationix/nvm) 安装和更新方法如下：

```
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.2/install.sh | bash
```

安装完成后要配置下环境变量：

```
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.zshrc
```

常用指令如下：
```
nvm ls-remote
nvm install your_version
nvm alias default your_version
```

### Express

[Express](https://expressjs.com) 是 Node 阵营里算是最流程的 Web 框架了，它提供了工程生成模板工具。

```
npm install express-generator -g
```

### Gulp

[Gulp](http://gulpjs.com) 基于流的前段构建工具。

```
npm install --global gulp-cli
```

### Recipes

- [Webpack](http://webpack.github.io)
- [Gulp](http://gulpjs.com)
- [Babel](http://babeljs.io)
- [Browsify](https://github.com/substack/node-browserify)
- [browsersync](https://www.browsersync.io)

### Tips
有时候需要查看全局和工程中已安装的 `npm` 包，每次都要手写命令比较麻烦，给出一劳永逸的方法：

```
echo 'alias ng="npm list -g --depth=0 2>/dev/null"' >> ~/.zshrc
echo 'alias nl="npm list --depth=0 2>/dev/null"' >> ~/.zshrc
```

添加完之后，重启 `Terminal` 然后运行 `ng` 或者 `nl` 就可以看到相应的 `npm` 包。

## Atom

[Atom](https://atom.io/) 被称作21世纪的编辑器，这个称号我认为当之无愧，强大到无所不能的插件机制让你每天都想蹂躏她，哈哈。

Atom 在安装插件的时候需要访问 `Atom AP`、`Amazon S3`、`NPM` 这些服务，但是这些服务在中国要么不能要么速度很慢，可以自 `~/.atom/.apmrc` 配置文件下添加一下[淘宝的 NPM 镜像](http://npm.taobao.org)：

```sh
registry = https://registry.npm.taobao.org
```

这里列出一些我比较喜欢的插件和主题：

### plugins

- file-icons
- git-time-machine
- pigments
- project-manager
- wakatime
- nuclide [必要时再安装]
- omnisharp [必要时再安装]

  OmniSharp 可以让你更好的进行 .NET 跨平台开发。支持 `Atom`、`Brackets`、`Terminal`、`Emacs`、`Sublime Text`、`Vim`、`Visual Studio Code` ，基本上市面上比较流程的编辑器都支持了。这里主要介绍下如何结合 Atom 使用：

  + 安装 `XamarinStudio`，详细安装方法在下面的 `IDE` 部分中，因为 `OmniSharp` 依赖于 `mono` 框架，安装 `Xamarin Studio` 会默认安装 `mono` 框架，如果不想安装这么大的 `Xamarin Studio`，同样也可以用 `homebrew` 来安装 `mono rutime` 来解决这个问题
    ```sh
    brew doctor
    brew update && brew install mono
    ```

  + 安装 [.NET Core](https://www.microsoft.com/net/core#macos) 来配合 `.NET` 平台下的不同类型应用程序的编译

  + 安装 [Yeoman](http://yeoman.io/)、[generator-aspnet](https://github.com/OmniSharp/generator-aspnet)、[bower](https://bower.io)、 [grunt-cli](http://gruntjs.com)、[gulp](http://gulpjs.com) [**前端技术什么时候能大一统**](https://docs.asp.net/en/latest/client-side/yeoman.html?#building-projects-with-yeoman)

    ```sh
    npm install -g yo bower grunt-cli gulp
    npm install -g generator-aspnet
    ```

  + 安装 `omnisharp-atom`

    ```sh
    apm install omnisharp-atom
    ```

  + 重启 Atom，会安装依赖项 `advanced-open-file`、`atom-yeoman`、`json-schema`、`linter`，安装的过程要稍微等一会

  + 安装完成后，`cmd+shift+p` 输入 Omnisharp atom: New Project 选择你想要创建的项目类型，内部是采用 `Yeoman` + `generator-aspnet` 来创建

  + 项目创建完成后，随便打开一个 .cs 文件后就会连接 `Omnisharp` 的服务器，进行语法校验和智能提示等一系列操作，这个过程我这里尝试的结果是开始会报各种语法错误，过一会校验完成后就没有了，感觉体验不是特别好

- emmet - HTML 快速编写神器
- autocomplete-modules - JS 模块导入神器
- atom-ternjs - javascript 智能提示 - 注意：ternjs 插件有时候要重新项目才能生效
- atom-css-comb - sort css properties
- atom-beautify - 一键美化代码
- sync-settings - atom 配置备份

### themes

- Nucleus Dark UI
- Seti-ui

## Cocoapods

[CocoaPods](https://cocoapods.org/) 是 Objective-C 和 Swift 的依赖管理工具，官方安装方法如下：
```
sudo gem install cocoapods
```

但是随着CocoaPods 1.0 以上版本的发布，出现了以下三个问题：

- 安装的过程中会提示：`Error installing pods:activesupport requires Ruby version >= 2.2.2`
- gem源特别慢
- 不同的工程可能用了不同版本的 CocoaPods ，又出现了版本切换的问题（真是日了狗）

解决第一个问题，就是升级ruby，这里用 [rvm](https://rvm.io/) 来升级，rvm 安装和更新脚本如下：

```
brew install gnupg gnupg2

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

\curl -sSL https://get.rvm.io | bash -s stable
```

> 注意：这样安装好的 `rvm` 大部分情况下是可以使用的，但是如果切换到 `bash` 命令行模式下有可能会出现 `shell_session_update:command not found` 的[问题](http://superuser.com/questions/1044130/why-am-i-having-how-can-i-fix-this-error-shell-session-update-command-not-f)，目前采用 `rvm get head` 更新下 `master` 分支下的 `rvm` 就没问题了，后续 `master` 正式更新到下载包里应该问题就会解决。

也可以参考可以参考这个地址：https://segmentfault.com/a/1190000003784636

更新ruby脚本如下：

```
rvm install 2.3.0
rvm --default use 2.3.0
```

解决第二个问题，要替换下阿里的ruby镜像：

```
gem sources --add https://ruby.taobao.org/ --remove https://rubygems.org/
gem sources -l
```

> 注意：这一步如果出现了错误，建议运行 `rvm reinstall 2.3.0`，重新安装下 ruby-2.3.0 的版本

~~解决第三个问题，这里给大家推荐 [podenv](https://github.com/kylef/podenv)，安装脚本如下：~~


```
brew install kylef/formulae/podenv
echo 'export PATH="$HOME/.podenv/bin:$PATH"' >> ~/.zshrc
```

```
podenv install 1.0.1
podenv install 1.0.0
podenv global 1.0.1
```

> 注意： 在用 podenv 安装的 `0.39.0 + ruby 2.3.0` 的情况在使用时可能会出现 `NoMethodError - undefined method 'to_ary'` 这种错误，原因是因为  Cocoapods 0.39.0 用到了一个方法在 ruby 2.3.0 中被弃用了，[这个 CocoaPods 官方已经解决](https://github.com/CocoaPods/CocoaPods/pull/4368)，但是并似乎并没有再重新发布到 0.39.0的正式版中，所以我们还得找到源码自己修改下，首先找到 `your_pod_path/cocoapods-0.39.0/lib/cocoapods/resolver/lazy_specification.rb` 这个文件，其次在第16行之前加入如下函数：

```
def respond_to_missing?(method, include_all = false)
  specification.respond_to?(method, include_all)
end
```

经过不断尝试后，发现用 `podenv` 来解决第三个问题会有坑，毕竟 `podenv` 还是比较小众，支持度也不好。经过查询后，找到了[直接用 `rvm` 来解决这个问题的方法](http://blog.csdn.net/focusjava/article/details/51325802)，这里我采用 `gemset` 的方式来管理不同的版本 `CocoaPods` 的 `gem`。

1.0.0 安装脚本如下：
```
rvm gemset create pods-1.0.0
rvm gemset use pods-1.0.0
gem install cocoapods -v 1.0.0
```

1.0.1 安装脚本如下：

```
rvm gemset create pods-1.0.1
rvm gemset use pods-1.0.1
gem install cocoapods -v 1.0.1
```

0.39.0 安装脚本如下：

```
rvm gemset create pods-0.39.0
rvm gemset use pods-0.39.0
gem install cocoapods -v 0.39.0
```

`Xcode 8 + Cocoapods` 的适配：

`Xcode 8` 中如果只是采用 `Cocoapods` 的安装依赖的功能，其实用 `1.0.x` 的版本也是可以的，但是如果要用到 `pod lib`、`pod spec`、`pod repo` 等命令时，就会出现各种问题，这时候需要升级到 `1.1.0` 的版本。

在升级 Cocoapods 1.1.0 RC 版本时，如果采用的是 [淘宝的 gem 源](https://ruby.taobao.org/)是无法更新到最新的 `RC` 版的，[那么第一步就要把 `gem` 源换回来](https://github.com/CocoaPods/CocoaPods/issues/5872)。

```
gem sources --add https://rubygems.org/ --remove https://ruby.taobao.org/
```

然后安装 `1.1.0-RC` 版的 `Cocoapods`：

```
rvm gemset create pods-1.1.0-rc
rvm gemset use pods-1.1.0-rc
gem install cocoapods --pre
```

如果想指定一个 `default` 的 `gemset`，可用如下命令：

```
rvm use ruby-version@gemset-name --default
```

> 注意:

> 1.这里用到了 `gemset` 来隔离不同版本的 Cocoapods，另外 `rvm` 自带 `global` 和 `default` 的两个默认 `gemset`，如果没有选择 `gemset` 默认安装在 `default` 下，如果使用 `sudo gem` 权限来安装，则会直接安装到 `global` 下，大家可以根据自己的期望安装

> 2.当升级到 1.0.1 以上的 `CocoaPods` 时，在 `Xcode` 的 `Build Phases` 已经不再把 `[CP]` 显示为 `emoji`，详细请查看 [1.0.1 CHANGELOG](https://github.com/CocoaPods/CocoaPods/blob/master/CHANGELOG.md)

> 3.当采用 `CocoaPods-1.1.0 RC + Realm` 时，会报 ``` sh: build.sh: No such file or directory ``` 的错误，此时需要在相应的命令前添加 [`FORK_XCODE_WRITING=true` 的命令](https://github.com/CocoaPods/CocoaPods/issues/5873)


随着 1.0+ 版本的发布，可以根据自己的喜好来安装 [Cocoapods App](https://cocoapods.org/app).

### 如何更好地使用 CocoaPods

- [ ] [CocoaPods-介绍](todo)
- [ ] [CocoaPods-使用指南](todo)
- [ ] [CocoaPods-情况说明以及升级](todo)
- [ ] [CocoaPods-提速](todo)
- [ ] [CocoaPods-App使用](todo)
- [ ] [CocoaPods-创建私有仓库和镜像](todo)
- [ ] [CocoaPods-创建公共依赖库并发布](todo)
- [ ] [CocoaPods-Carthage抉择](todo)
- [ ] [Cocoapods-deintegrate](todo)

> 如果已经按照错误的方法安装了 Cocoapods 想要卸载的话，[这里](http://www.jianshu.com/p/8b61b421dd76)给出了方法

## Carthage

Cocoapods 用累的同学不妨试试这个，`非侵入式`的依赖管理工具，安装方法如下：

```
brew update
brew install carthage
```

- [ ] [Carthage-介绍](todo)
- [ ] [Carthage-使用指南](todo)
- [ ] [Carthage-创建公共依赖库并发布](todo)

## Git

### Git SSH Key

```
ssh-keygen -t rsa -b 4096 -C "xxxx@xxx.com" -f ~/.ssh/id_rsa_github
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa_github
ssh -T git@github.com
```

```
ssh-keygen -t rsa -b 4096 -C "xxxx@xxx.com" -f ~/.ssh/id_rsa_coding.net
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa_coding.net
ssh -vvvT git@git.coding.net
```

生成相应的 SSH key 后，需要在 .ssh 文件夹下生成相应的 config 文件，我一般的配置如下：

```
# Github CoderAFI (developer_afi@163.com)
Host github.com
Hostname github.com
User CoderAFI
Identityfile ~/.ssh/id_rsa_github

# Coding.net (developer_afi@163.com)
Host git.coding.net
User CoderAFI
PreferredAuthentications publickey
IdentityFile ~/.ssh/id_rsa_coding.net
```

### Gitignore

[gitignore.io](https://www.gitignore.io/) 是一个提供 gitignore 的第三方服务，同时提供了 `Command Line` 的形式来添加。

安装脚本:
```
echo "function gi() { curl -L -s https://www.gitignore.io/api/\$@ ;}" >> ~/.zshrc && source ~/.zshrc
```

添加 `Xcode` 的 `gitignore`：

```
cd your_prject_root_dir
gi objective-c,swift,osx,appcode,xcode,carthage
```

### GitProxy

这里主要是讲解下 `Git` 与 `Shadowsocks` 配合来做代理：

- HTTP(S) 协议

全局代理：

```
git config --global http.proxy socks5://127.0.0.1:1080
git config --global http.proxy socks5://127.0.0.1:1080
```

只对特定 `URL` 设置代理：

```
git config --global http.<要设置代理的URL>.proxy socks5://127.0.0.1:1080
git config --global http.https://github.com.proxy socks5://127.0.0.1:1080
```

- SSH 协议

全局代理：

修改 `/etc/ssh/ssh_config` 配置文件，添加如下脚本：

```
ProxyCommand nc -X 5 -x 127.0.0.1:1080 %h %p
```

只对特定 `URL` 设置代理：

修改 `~/.ssh/config` 配置文件，在需要设置代理的 `config` 项中，添加如下脚本配置：

```
ProxyCommand nc -X 5 -x 127.0.0.1:1080 %h %p
```

## BaiduPCS

[BaiduPCS](https://github.com/GangZhuo/BaiduPCS) 是国人开发的百度网盘的命令行工具,安装脚本如下：

```
cd your_want_install_folder
git clone https://github.com/GangZhuo/BaiduPCS.git
cd BaiduPCS
make clean
make
make install #将安装到/usr/local/bin下
```

## JAVA

[JDK](http://www.oracle.com/technetwork/java/javase/downloads/index.html)

安装好了JDK方面安装 Android 的开发环境以及安装 InteliJ 系列的IDE.

## Android SDK

对于刚刚接触 `Android` 的同学来说，看到 `Android SDK Manager` 有这么多东西，到底该下载哪些才好呢？这是个问题，我这里给出两篇写的比较好的文章，供参考

- [Android开发环境配置](http://www.cnblogs.com/kangjianwei101/p/5267044.html)
- [Android SDK Manager和AVD Manager使用](http://www.cnblogs.com/kangjianwei101/p/5621238.html)

## IDE

上面安装了两个IDE： `Xcode` 和 `Atom`，下面的列出一个比较常用的列表：

- [AndroidStudio](https://developer.android.com/studio/index.html)
- [XamarinStudio](https://www.xamarin.com/download)

XamarinStudio 从 6.1 开始开源了 Xamrin.forms 的源代码，可以说是一个划时代的意义，从这个版本开始意味着微软的技术终于在这么多年之后被开发者搬到了所有平台，这个版本最让我期望的就是 Xamarin Previewer 的功能和 Skin Change，其实在2、3年前我也有这样的想法，可惜我自己没能力实现，不过这么吊的功能怎么安装呢，这里说总结下：

  + 默认情况下载的 XamarinInstaller 还是安装5 的版本，所以要在打开XamarinStudio之后，点击 `update channel `  切换到 `alpha` 下，然后 Xamarin Studio 就会自动帮你下载 6.1 版本，并下载相应平台的依赖库.

  + 下载完后，重新启动就可以在设置里修改 Xamarin Studio 的皮肤

  + 新建工程后，默认还是用的 xamarin.forms 库还是 5 的时候默认的，而且也不会自动升级，这个原因是由于在升级到 Xamarin Studio 6.1 之后, `nuget` 仓库的 `sources` 没有了，这时候你需要去设置里自己设置下，然后重新 `update solution package` 就会下载最新版本的 xamarin.forms，这个时候打开 `xaml` 文件就可以实时预览相应的界面了

  + 编译并运行 Android 工程
  + 编辑 code template
    - `propfull`

      ```
      private $type$ _$name$;
      public $type$ $name$ {
        get { return _$name$; }
        set { _$name$ = value; }
      }
      ```

- [InteliJ IDEA]()
- [WebStorm]()
- [AppCode]()
- [PHPStorm]()

## Genymotion

[Genymotion](https://www.genymotion.com) 是 Android 平台上速度快，功能强大的模拟器平台，可以去官网下载安装，不过模拟器的运行需要 [VirtualBox](https://www.virtualbox.org/wiki/Downloads) 的支持。

> 注意： 在安装完 Genymotion 和 VirtualBox 之后，要进行登录和下载相应平台下的模拟器，操作完之后就可以启动相应平台下的模拟器了，不过这个时候如果你提示 `Unable to start virutal device`，你需要用 VirtualBox 打开你的模拟器的设置，面板下面可能会报一些无效的参数对它们做相应的修改，我这里还碰到了声音驱动没有选中的情况，都要单独处理下，这些操作完成后，再用 Genymotion 启动下应该就没有问题了，总之，这个得看人品。

## VersionControl
1. SourceTree
2. Tower
3. CornerStone

## Swift

## ReactNative

[DecoIDE]https://www.decosoftware.com/

## Docker

[Docker](https://www.docker.com) 是一个让人脑洞大开的应用程序虚拟化方案，对于从事服务器和云开发的开发者可以尝试下。

[Docker docs](https://docs.docker.com/docker-for-mac/)  给出了详细的 OSX 安装方法，但是需要注意 Docker 官方给出了 `Stable` 和 `Beta` 两个安装渠道，大家可以详细阅读里面的内容进行有选择性的安装。

## Design
1. [Sketch](https://www.sketchapp.com/) - 码农必备设计工具，支持各种插件，这里给出一些常用的插件：
  - [ArtboardZoom](https://github.com/arkkimaagi/artboardzoom)
  - [Craft](https://www.invisionapp.com/craft) - 不装后悔
  - [Duplicator](https://github.com/turbobabr/duplicator)
  - [DynamicButton3.5](https://github.com/fuggfuggfugg/sketch-dynamic-button-3.5)
  - [Golden Line Height](https://github.com/lorenzwoehr/golden-ratio-line-height-sketch-plugin)
  - [marketch](http://tudou527.github.io/marketch/)
  - [personas](https://github.com/nolastan/sketch-personas)
  - [Rename It](https://github.com/rodi01/renameit)
  - [Sketch Measure](https://github.com/utom/sketch-measure)
  - [Unsplash It](https://github.com/fhuel/unsplash-it-sketch)
  - [WakaTime](https://github.com/wakatime/sketch-wakatime)
  - [Sketch-SF-UI-Font-Fixer](https://github.com/kylehickinson/Sketch-SF-UI-Font-Fixer)
  - [San Francisco Fonts](https://developer.apple.com/fonts/)
  - [sketch-notebook](http://marcosvid.al/sketch-notebook/)

2. PhotoShop
3. Adobe DX
4. [Logoist](http://www.syniumsoftware.com/logoist) - 傻瓜式 `Logo` 设计工具

## SQL

### DataBase

- [MySQL](https://www.mysql.com)
- [MongoDB](https://www.mongodb.com)

```
brew install mongodb
```

### Client
- [NavicatSQL](https://www.navicat.com)
- [MySQLWorkbench](http://dev.mysql.com/downloads/workbench/)
- [Robomongo](https://robomongo.org/download)

## FTP
1. Transmit

## System
1. iStatMenus
2. CleanMyMac

## Other
1. Chrome
2. WeiXin
3. QQ
4. Sip
5. 网易云音乐
6. Foxmail
7. Mindnode
8. [OmniPlan](https://www.omnigroup.com/omniplan) - Mac 上优秀的项目管理软件
9. [wakatime](https://wakatime.com/) - 量化你的代码
10. [rescuetime](https://www.rescuetime.com/) - 工作习惯养成
11. [trackingtime](https://trackingtime.co/)
12. DropBox - 可以在设置 Shadowsocks 代理进行访问
13. Charles
14. Gliffy
15. [CheatSheet](https://www.mediaatelier.com/CheatSheet/) - 快捷键快速查找工具
16. [Bartender](https://www.macbartender.com) - 状态栏工具
17. [Dash](https://kapeli.com/dash) - OSX API documentation sets.
18. [mpv](https://mpv.io) - a free, open source, and cross-platform media player
