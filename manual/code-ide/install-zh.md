Cocos Code IDE安装指南
=========================

简介
----------
你可以通过[这篇文章](../zh.md)了解 Cocos Code IDE 的功能。

下载 Cocos Code IDE
----------
Cocos Code IDE 只支持 Cocos2d-x 3.x/Cocos2d-js 3.x 引擎。

----

**Cocos2d-x 引擎和 Cocos Code IDE 版本兼容表：**

| IDE版本\Cocos2d-x 版本 | 3.2 Final | 3.3 rc0 |
| -------------------- |:----------:| :------:|
| 1.0.0-Final 			| √ 		 | √       |
| 1.0.0-RC2   			| √ 		 | x       |

---
**Cocos2d-js 引擎和 Cocos Code IDE 版本兼容表：**

| IDE版本\Cocos2d-js 版本 | 3.0 Final | 3.1 Final |
| -------------------- |:----------:| :------:|
| 1.0.0-Final 			| √ 		 | √       |
| 1.0.0-RC2   			| √ 		 | x       |

请参考上表选择 Cocos Code IDE 和 Cocos2d-x/Cocos2d-js，并统一到 [Cocos 下载页][cocos download page] 下载。

如何安装
------------

### 基本需求

+ **[Windows 用户]** 安装 [Python 2.7.x][Python link]，需要 2.7.5 或以上版本，不支持 3.x 版本。
+ **Cocos Code IDE 安装路径不可以包含中文等非 ascii 值**
	
### 额外需求

* 如果要在 iOS Simulator 上调试，需要安装 XCode 5.1 或以上版本

* 如果要在 android 设备上调试，需要安装 [Android SDK][Android SDK link]

* 如果你想要定制自己的 runtime，你需要：

	| 目标平台      | 工具 |
	| ------------- |:----------------------------:|
	| Mac OS X/iOS      | XCode 5.1或以上版本 		|
	| Windows       | VS2012 或以上版本 |
	| Android       | [Android SDK][Android SDK link], [NDK(**r9d版本**)][NDK link], [ANT][ANT link] |
	
已有的 Cocos2d 项目如何使用 Code IDE开发
----------

如果你的项目正在使用 cocos2d-x/cocos2d-js 3.x 引擎进行开发，现在可以很容易的切换到 Cocos Code IDE，你需要做的只是：

* 通过 IDE 创建一个对应的 Cocos Lua/JavaScript 示例工程
* 用项目资源（脚本、图片等）替换掉示例工程中的资源

入门指南
----------

* 如果你是Lua开发者，请[点击这里](getting-started-for-lua/1-creating-a-cocos-game/zh.md)。
* 如果你是JavaScript开发者，请[点击这里](getting-started-for-js/1-creating-a-cocos-game/zh.md)。

[Android SDK link]: https://developer.android.com/sdk/index.html?hl=sk
[NDK link]: https://developer.android.com/tools/sdk/ndk/
[ANT link]: http://ant.apache.org/
[Python link]: http://www.python.org/download
[cocos download page]: http://download.cocos2d-x.org
