# Cocos2d-JS v3.0 Final发布说明

<img src="http://www.cocos2d-x.org/attachments/download/1508" height=180> 

Cocos2d-JS是Cocos2d-x的JavaScript版本，融合了Cocos2d-html5和Cocos2d-x JavaScript Bindings。它支持Cocos2d-x的所有核心特性并提供更简单易用的JavaScript风格API，并且天然支持原生平台和浏览器。

Cocos2d-JS在3.0版中完成了不同平台工作流的彻底整合，为不同平台提供了统一的开发体验，无论你为web还是原生应用做开发。“一次开发，全平台运行”因为Cocos2d-JS变得前所未有得简单和自然。同一套Javascript游戏代码，可以同时运行在所有现代浏览器和包括Mac OSX, Windows, iOS, Android的原生平台上，这将为我们的开发者在几乎所有发行渠道中带来难得的机遇。另一方面，如果你只想开发一款Web轻度休闲游戏，你可以直接集成Cocos2d-JS Express Version到你的页面中，Express Version是专为此类游戏定制的轻量级版本。

工作流整合后的第一个版本Cocos2d-JS v3.0兼具了简单和强大：新的JavaScript风格API使得编码，测试和发布环节都变得异常轻松简单。同时我们为v3.0开发了诸多强大的新特性，比如Spine动画支持，支持热更新的资源管理器，对象缓冲池，JS到Objective-C/JAVA反射，等等。

## 工作流

- 跨平台游戏开发者可以使用Cocos Console来创建项目，用Web引擎加速游戏开发，最终用Cocos Console将游戏发布到所有原生平台和Web平台。

- Web端轻度休闲游戏开发者可以直接下载单文件的Cocos2d-JS Express Version，嵌入Web页面中，像使用jQuery那样进行开发。

## 核心特性

* 统一了Web引擎和JSB引擎的API，保障开发者的代码的统一性。
* JavaScript风格API重构：new构造方式，属性风格API，简化的动作API。
* 添加资源管理器来支持资源和脚本的热更新。
* 添加更为强大和灵活的新事件管理器。
* 添加JavaScript到JAVA/Objective-C反射。
* 添加Spine骨骼动画支持

## 注意事项

关于JSB编译环境，还有一些限制条件需要满足：

- [Android编译] NDK版本必须使用r9d
- [iOS编译] Xcode版本必须在5.1.1以上

## 下载

- [Cocos2d-JS v3.0 Final](http://www.cocos2d-x.org/filedown/cocos2d-js-v3.0.zip)
- [Cocos2d-JS v3.0 Express Version](http://www.cocos2d-x.org/filecenter/jsbuilder)
- [在线API索引](http://www.cocos2d-x.org/reference/html5-js/V3.0/index.html)
- [下载版API索引](http://www.cocos2d-x.org/filedown/Cocos2d-JS-v3.0-API.zip)
- [在线测试例](http://cocos2d-x.org/js-tests/)

## 详细更改

更详细的改动列表和升级文档可以参见:

- [Cocos2d-JS v3.0改动说明](http://www.cocos2d-x.org/docs/manual/framework/html5/release-notes/v3.0/changelog/en)
- [Cocos2d-JS v3.0升级指南](http://www.cocos2d-x.org/docs/manual/framework/html5/release-notes/v3.0rc0/upgrade-guide/zh)

## 关于Cocos2d家族

- Cocos2d-JS v3.0 Final使用Cocos2d-x 3.2正式版作为JSB的底层实现
- Cocos2d-JS v3.0 Final兼容Cocos Code IDE v1.0.0 RC2+
- Cocos2d-JS v3.0 Final兼容Cocos Studio v1.2 - v1.5.0.1

如果遇到任何问题，你都可以向Cocos2d-JS开发者社区寻求帮助： 

- [官方论坛](http://discuss.cocos2d-x.org/category/javascript)
- [文档目录](http://cocos2d-x.org/docs/manual/framework/html5/zh)
- [Github仓库地址](https://github.com/cocos2d/cocos2d-js)