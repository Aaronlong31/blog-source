title: 批量修改照片的EXIF信息
date: 2015-08-31 18:54:41
tags: exif
---

今天将相机中的照片都导入到Mac的Photos中，突然发现这些照片的拍照时间不对，年月日时分秒都不对。并且之前导入的照片都不对，肯定是相机的日期设置的不对。到相机上检查，果然是。那之前的照片也得全部修改了。

### 第一条路
打开Photos，选中照片，双击时间，会弹出修改时间的界面。但这样只能一个个的修改，不知改到何年何月，并且由于不知道照片的具体拍照时间，还只能自己估摸着改，很是不方便。

### 第二条路
一个个改不行，那就试着批量改。Google后发现可以用AppleScript脚本批量修改Photos中的照片信息，包括时间。但由于不知道拍照时间，还是只能改个大概。所幸的是，我居然找到一张照片，里面的显示器有电脑的系统时间，那这就好办了，知道了时间差，所有照片的拍照时间就能精确得到了。
照片的错误拍照时间是 2014-01-06 12:55，实际时间是2015-02-05 00:14，那时间差就是394天，11小时，19分，懒得算的可以用这个工具：<http://www.timeanddate.com/date/durationresult.html?d1=06&m1=1&y1=2014&d2=05&m2=02&y2=2015&h1=12&i1=55&s1=00&h2=00&i2=14&s2=00>

AppleScript脚本如下：

```applescript
tell application "Photos"
    activate
    set imageSel to (get selection)
    set imageCount to (count of imageSel)
    repeat with i from 1 to imageCount
        tell media item i
            set image to item i of imageSel
            set image_date to the (date of image) + 394 * days + 11 * hours + 19 * minutes
            set date of image to image_date
        end tell
    end repeat
    return "Modify image date successfully."
end tell
```

使用方式就是打开AppleScript编辑器，输入以上脚本，然后打开Photos，选择要修改的照片，再回到AppleScript编辑器，点运行就好啦！但我使用时发现，速度很慢，大概一秒钟改一两个，并且还不能一次选择很多照片（大概能选择30张左右），不然就报错。有可能是脚本问题，但不知道怎么改了。所以，换路。

### 第三条路
在Google的过程中，无意发现了[jhead](http://www.sentex.net/~mwandel/jhead/)这个软件，能修改EXIF信息。查看文档，使用很简单，并且支持多系统。

先安装，在mac下可以通过`brew install jhead`来安装。Photos中的照片要先导出来，导出时要选择`导出未修改的原件`。导出后执行以下命令：

```
jhead -da2015:02:05/00:14-2014:01:06/12:55 -ft *.JPG
```

这个工具异常的方便，-da参数是专门用来对付相机时间不对这个问题的。只要指定一个正确的拍照时间和不正确的拍照时间就好了，都不用你去算时间差，所有的照片都按这个时间差来修改。-ft是修改照片的修改时间为拍照时间，如果创建时间大于拍照时间，也会被修改成拍照时间。完成后导入到Photos就好了，当然，要先删除Photos中有问题的照片。

> 总结：不能在一棵树上吊死，要多在几棵树上试试。

All done!

