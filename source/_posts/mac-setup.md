title: Mac常用工具
date: 2015-06-08 21:44:15
tags:
- mac
categories:
- mac
---

## [Homebrew](https://github.com/robbyrussell/oh-my-zsh)  
Mac下必备的软件安装工具，类似于Ubuntu下的apt-get。安装方式：

```shell
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```

安装后，需要运行`brew update`和`brew doctor`。
使用方式：`brew install wget`.

## [Homebrew Cask](http://caskroom.io/)
homebrew的扩展，可以安装有图形化界面的软件。安装很简单：`brew install caskroom/cask/brew-cask`。
用它安装软件也很简单，`brew cask install xxx`就好，介绍几个好用的：

```shell
# 预览插件，可以在Finder中按空格直接预览文件
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlprettypatch
brew cask install quicklook-csv
brew cask install betterzipql
brew cask install webpquicklook
brew cask install suspicious-package

brew cask install gitbook
brew cask install github
brew cask install near-lock
brew cask install dash
brew cask install atom
brew cask install caffeine
brew cask install java
brew cask install qq
brew cask install flashlight
brew cask install dropbox
brew cask install google-chrome
brew cask install sequel-pro
brew cask install tunnelblick
brew cask install hammerspoon
brew cask install sogouinput
brew cask install betterzipql
brew cask install quicklook-json
brew cask install qlimagesize
brew cask install qlstephen
brew cask install qlcolorcode
brew cask install sourcetree

```

## the_silver_searcher
安装方式：`brew install the_silver_searcher`，文件内容搜索神器，谁用谁知道。

## [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)  
zsh是命令行环境bash的一种替代选择，oh-my-zsh对zsh做了很多扩展，有很多插件和主题，比如git插件能直接显示当前的分支和状态，如下图：
![zsh](/images/zsh1.png)
安装方式：
```
curl -L http://install.ohmyz.sh | sh
```
安装好后重新打开命令行，就能看到效果了。
zsh的配置文件是`~/.zshrc`，可以在里面配置theme和plugin。

## [byobu](https://help.ubuntu.com/community/Byobu)  
by obu是Ubuntu自带的，类似于screen的终端控制工具，可以多tab，多窗口，比screen好用很多。在Mac下需要通过brew安装：`brew install byobu`，效果如下图：
![byobu](/images/byobu.png)
F2是新建tab，F3/F4在不同tab间切换。
## Vim  
vim就不用介绍了，要说的是它的插件管理，使用[vundle](https://github.com/gmarik/Vundle.vim).
详细安装方式里面介绍很详细。

## [flashlight](http://flashlight.nateparrott.com/)
虽然新版OSX的spotlight已经很强大了，但还是有扩展的余地的，于是flashlight诞生了。
介绍几个扩展功能：
- `kuaidi 100033892580`可以查快递；
- `gh flashlight` 或 `github flashlight`可以搜索github；
- `baidu 阿三`可以搜索百度，`bing 阿山`可以搜索bing；
- `man ls`这个太赞了，直接打开man文档；
- `taobao 鞋子`搜索淘宝，`jd 鞋子`搜索京东；
- `visa` `mastercard` `amex` `diners` `jcb` `discover` `hipercard`可以生成测试信用卡号；
- `uuid`生成uuid；
- `dash each`可以查询dash文档；
- `zhihu daily`查看知乎日报；
- 。。。
通过以上示例就知道这货有多强大了，还有太多功能，也可以自己写扩展。
Flashlight可以通过`brew cask install flashlight`安装。
另外说一点，很多人用mac喜欢把切换输入法的快捷键设置为`command`+`space`（貌似是默认的），不过我喜欢设置成`shift`+`command`+`space`，这样就能将spotlight设置成`command`+`space`了，最常用的功能要设置成最顺手的快捷键。

## [Dash](https://itunes.apple.com/us/app/dash-docs-snippets/id458034879?mt=12)
查看文档的利器，可以离线下载各种开发文档，绝对满足你的需求，不过免费版有点恶心，每次查看文档需要等个8秒钟，所以还是花点钱买了吧！价格不高，不超过100￥。

## [Sublime Text 3](http://www.sublimetext.com/3)  
一个很漂亮也很强大的编辑器，其插件很多，安装也很方便，全得益于Package Control，不过需要自己安装，安装方式：
打开Sublime Text，按Ctrl + \`，输入以下内容后回车：

```
import urllib.request,os,hashlib; h = '7183a2d3e96f11eeadd761d777e62404' + 'e330c659d4bb41d3bdf022e94cab3cd0'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
```

安装好后，按Shift+Cmd+P，输入install Package，回车，然后就可以看到很多的插件了，这里推荐几个我常用的：

- [Emmet](http://docs.emmet.io/abbreviations/syntax/)是web开发人员的福音，可以很方便快捷的编写html/css代码；
- Markdown Preview提供了markdown文件的预览； Vintage可以在sublime text上使用vim的快捷键，还有其他的插件可以自己找；
- git
- darkula主题，Idea IntellIj的主题，黑酷。

如果要在命令行中使用，还需要执行以下命令：
```shell
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
```
用`subl --help`查看使用方式。

## [StackEdit](https://stackedit.io)  
在线的markdown编辑器，功能齐全，支持多种网络存储（dropbox/google drive/Github/Gist/Wordpress/Blogger等）.

## [JSFiddle](http://jsfiddle.net/)  
在线的代码演示工具。类似的还有[CodePen](http://codepen.io/).

## [Mou](http://mouapp.com/)  
Mac上的Markdown编辑器，国人作品，简洁实用。
![Mou](/images/mou.png)

## [Source Tree](https://itunes.apple.com/cn/app/sourcetree-git-hg/id411678673?mt=12)  
Mac上强大的git图形界面。
![Source Tree](/images/sourcetree.png)

## [Hammerspoon](http://www.hammerspoon.org/)
引用官方文档：
>**What can it do for me?**
You can write Lua code that interacts with OS X APIs for applications, windows, mouse pointers, filesystem objects, audio devices, batteries, screens, low-level keyboard/mouse events, clipboards, location services, wifi, and more.

可以扩展mac的快捷键、控制窗口大小、监控wifi、地理位置等。我的配置：<https://github.com/Aaronlong31/hammerspoon-config>

## [Near Lock](http://www.nearlock.me/)
Near Lock 可以配合 iPhone 实现自动解锁、上锁 Mac。Near Lock 的使用体验非常棒，你只需把 iPhone 带在身上就可以了，随时打开你的 Mac 都是解锁状态。而当你离开 Mac 又会自动上锁，炫酷的不行。

## Terminal
系统自带的terminal基本满足需求，不过还要些许配置：
- 选择主题为Pro，好看！
- 可以闪动光标，不然容易找不到光标在哪；
- 打开键盘tab，勾选`使用Option键作为Meta键`，这样就可以使用`alt + .`这样的操作了！

## Java
JDK1.7及以上都可以到oracle的官网下载，JDK1.6需要到苹果的[官网](http://supportdownload.apple.com/download.info.apple.com/Apple_Support_Area/Apple_Software_Updates/Mac_OS_X/downloads/031-03190.20140529.Pp3r4/JavaForOSX2014-001.dmg)下载。
下载后配置JAVA_HOME，修改~/.profile，加入以下代码：
```shell
# 如果想换成JDK1.7就写1.7，前提是你要先安装；1.6和1.7的安装路径很不一样，这样写切换时就方便多了。
export JAVA_HOME=`/usr/libexec/java_home -v 1.6`
export PATH=$JAVA_HOME/bin:$PATH
```

还有其他的工具，以后慢慢补充。
