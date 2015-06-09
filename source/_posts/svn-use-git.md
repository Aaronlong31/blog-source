title: 使用Git作为svn的客户端
date: 2015-06-09 11:39:22
tags: 
- git
- svn
- mac
---

新公司基本都在用SVN做版本控制，但习惯了git的我，没法喜欢svn，并且公司svn根深蒂固，各个工具平台都和svn结合紧密，很难改用git，还好git够强大，居然能作为svn的客户端，本地操作都是使用git，push到svn服务器还是svn格式的，这样愉悦自己，不影响他人。
下面说下使用方式，具体文档在<https://git-scm.com/book/en/v2/Git-and-Other-Systems-Git-as-a-Client>。

假设svn仓库地址为：http://xxx.xxx.com/svn/projecta ，有trunk和branches/dev分支。
## clone到本地
使用`git svn clone http://xxx.xxx.com/svn/projecta -s`将svn的文件都clone到本地。其中`-s`表示使用svn的标准目录格式，就是`trunk`、`branches`和`tags`，如果不是这种格式，也可以使用`-T trunk -b branches -t tags`来单独指定。

## 本地操作
clone到本地后，本地只有一个master分支，对应svn的trunk，如果想切换到其他分支，要先将svn的分支拉出来，再checkout：
```
git branch dev remote/origin/dev
git checkout dev
```
切换后就可以像普通的git仓库一样操作了，如`git add`、`git status`、`git commit`等。

## 提交到svn
`git commit`只是提交到本地，需要执行`git svn dcommit`push到svn服务器。

## 常用操作
- `git svn info`：同`svn info`
- `git svn branch bug1`：创建svn分支
- 
