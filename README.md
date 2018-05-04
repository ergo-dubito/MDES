# MDES：让 macOS 环境搭建更轻松

### 介绍

`MDES` 将开发环境的搭建按照顺序归纳为以下四步：

- **准备阶段**
- **脚本安装**
- **软件安装**
- **配置同步**

### 准备阶段

准备阶段要做的是安装软件管理工具并且为安装其他软件做准备.

- [准备](Scripts/prepare.sh)
- [科学上网](Scripts/wall.sh)

### 脚本安装

脚本安装阶段能快速安装配置好一些常用的工具和编辑器，比如：Atom编辑器、Git配置、字体下载、各种编程语言安装、命令行工具等，按照安装顺序大致包含如下：

- [基础](Scripts/basic.sh)
- [语言](Scripts/language.sh)
- [开发](Scripts/develop.sh)
- [终端](Scripts/terminal.sh)

### 软件安装

软件安装阶段主要是推荐了一些比较精致且好用的工具和软件.

- [软件脚本](Scripts/macapp.sh)
- [软件清单](Docs/apps.md)
- [设计工具](Docs/design.md)

### 配置同步

配置同步是让你在某台电脑上开发环境的配置文件同步到另一台电脑，该步骤正在重新规划中，敬请期待.

- [ ] 基本配置文件备份
- [ ] 配置文件同步
- [ ] 配置文件采用 [dotfiles](https://github.com/thoughtbot/dotfiles) 格式
- [ ] 开发部分按照技术栈来区分

### 备注

有些安装脚本中，每一部分的注释中可能包含下面的标记，这些标记的意思如下：

- `Close Terminal`   关闭终端生效
- `Close Mac`        关闭电脑生效
- `Need Config`      需要单独配置