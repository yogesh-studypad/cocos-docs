Cocos Code IDE for Intellij IDEA安装说明
=========================

简介
----------
你可以通过[这篇文章](../zh.md)了解 Cocos Code IDE 的功能。


关于IDEA平台版本适配说明
----------
从Cocos Code IDE 2.0.0beta开始都是在IDEA平台上，如果你要下载基于Ecipse平台的IDE，
请下载2.0.0之前的版本。

安装环境
---------
安装前，请先通过[这篇文章](../install-zh.md)了解需要配置的语言环境（jdk、python）和各个引擎适配的说明。

Cocos Code IDE for Intellij IDEA下载和安装
---------
请从[Cocos2dx官网下载页](http://cn.cocos2d-x.org/download/)下载Cocos Code IDE 2.0.0beta或者更高的版本。

目前提供了Windows和Mac平台的安装版本，同时，也提供了一个IDEA插件，如果你已经拥有了自己的IDEA，就可以选择使用插件的方式进行安装。特别注意，请选择IDEA 14安装插件。

###Windows和Mac平台安装
双击Windows或Mac平台的安装程序cocos-code-ide.exe、cocos-code-ide.dmg，按照向导说明即可完成安装。

###插件安装
请选择IDEA 14版本安装插件，推荐14.1

1.选择File->settings
 
![](./res/idea/install/plugin-install-step1.jpg)

2.点击install plugin from disk

![](./res/idea/install/plugin-install-step2.jpg)

3.选择插件

![](./res/idea/install/plugin-install-step3.jpg)

4.安装结束后，点击OK或者Apply，重启IDEA即完成安装

![](./res/idea/install/plugin-install-step4.jpg)

功能简介
---------
新的IDEA版本，功能上大体和原先的IDE一致，界面风格和布局基也大同小异，相同的地方不再赘述，请参看[使用文档](http://cn.cocos2d-x.org/article/index?type=code-ide&url=/doc/cocos-docs-master/manual/code-ide/zh.md)，以下将介绍IDEA上的特点。

###配置环境

1.File -> settings 

![](./res/idea/settings/settings.jpg)

2.Other Settings -> Cocos Framework 在此处可以配置Framework或者独立引擎。Framework请在Cocos商店里下载，它包含了预编译好的js和lua引擎，如果你要用它请选择Framework Mode；如果是独立的js或者lua引擎，请选择Engine Mode。

![](./res/idea/settings/cocos-framework.jpg)

###python ndk sdk ant配置

Other Settings -> Cocos 在此处可以配置python、SDK、NDK、ANT、JDK的路径。

![](./res/idea/settings/cocos.jpg)

###新建项目

1.当你配置好引擎和设置好环境后，就可以开始新建项目了。点击File->New Project

![](./res/idea/project/file-new-project.jpg)

或者在IDEA的欢迎页面点击Create New Project

![](./res/idea/project/welcome.jpg)

2.进入新建项目的向导,就可以选择新建Cocos JS或者Cocos Lua项目

![](./res/idea/project/new-project-wizard.jpg)

###导入已有的Cocos Code IDE项目（旧版本）

File->New->Project from Existing Sources

![](./res/idea/project/import-project-1.jpg)

选择Import project from external model，选中Eclipse

![](./res/idea/project/import-project-2.jpg)

勾选根项目(TestJSProject)，注意不要勾选frameworks下的源码项目

![](./res/idea/project/import-project-3.jpg)

一直Next，直到把项目导入。打开项目.impl文件，找到JAVA\_MODULE改成
COCOS\_JS\_MODULE或者COCOS\_LUA\_MODULE（根据你的项目类型）。然后重启IDEA，旧版本的项目就导入成功。

![](./res/idea/project/import-project-4.jpg)

###调试

1.新建调试

方法一：项目->右键->Debug/Run 项目，会自动生成调试配置

![](./res/idea/debug/new-debug1.jpg)

方法二：Edit Configurations->add，选择luabiding或者jsbinding

![](./res/idea/debug/new-debug2-1.jpg)

![](./res/idea/debug/new-debug2-2.jpg)

2.编辑调试配置

点击Edit Configurations

![](./res/idea/debug/new-debug3-1.jpg)

弹出调试配置页面

![](./res/idea/debug/new-debug3-2.jpg)

3.开始调试

方法一：项目->右键->Debug/Run 项目

![](./res/idea/debug/new-debug4-1.jpg)

方法二：点击右上角的运行或者调试按钮

![](./res/idea/debug/new-debug4-2.jpg)

###添加源码和编译自定义模拟器

添加源码：项目->右键->Cocos Tools->Add Native Codes Support

编译自定义模拟器：项目->右键->Cocos Tools->Build Custom Simulators

![](./res/idea/other/native-and-build.jpg)


入门指南
----------

* 如果你是Lua开发者，请[点击这里](getting-started-for-lua/1-creating-a-cocos-game/zh.md)。
* 如果你是JavaScript开发者，请[点击这里](getting-started-for-js/1-creating-a-cocos-game/zh.md)。

[JDK link]: http://www.oracle.com/technetwork/java/javase/downloads/index.html 
[Android SDK link]: https://developer.android.com/sdk/index.html?hl=sk
[NDK link]: https://developer.android.com/tools/sdk/ndk/
[ANT link]: http://ant.apache.org/
[Python link]: http://www.python.org/download
[cocos download page]: http://download.cocos2d-x.org
[update link]:http://www.cocos2d-x.org/filedown/cocos-code-ide-1.0.2-update.zip
