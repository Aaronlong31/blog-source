title: Intellij Idea配置
date: 2015-06-16 19:16:41
tags:
- Intellij Idea
---

## user.dir设置
对于包含很多子项目的maven工程，在eclipse下运行单元测试时，user.dir为子项目的路径，但在Intellij Idea下是项目根目录路径，这时就可能出现eclipse找得到文件，在idea下找不到的情况。设置如下：
Run->Edit configurations->Defaults，选择测试工具，比如TestNG或Junit，修改`Working directory`为`$MODULE_DIR$`。
以上是修改默认的测试，对于已有的测试，需要单独修改。

