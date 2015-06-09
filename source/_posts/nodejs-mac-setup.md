title: nodejs的配置
date: 2015-06-08 20:26:06
tags:
- nodejs
- mac
categories:
- mac
---

# nodejs 配置
使用淘宝的NPM镜像：[https://npm.taobao.org/](https://npm.taobao.org/)

## 配置
###方式一：
```
npm install -g cnpm --registry=https://registry.npm.taobao.org
```

###方式二：
```
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"
```

##安装npm模块
```
cnpm install [name]
```

##同步模块
```
cnpm sync connect
```
